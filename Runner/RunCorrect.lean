import Runner.Correct
import Runner.Run
import Flapjack.Pancake.Semantics.PanProps.EvaluateAddClockEq

/-! A finished `crun` is the source behaviour of the input. -/
namespace Runner
open Classical Flapjack Flapjack.Pancake.PanLang InitE
open Flapjack.PanSemStateFiniteExact

theorem codeMap_insert (code : Code) (key : MlS) (entry : CodeEntry) :
    codeMap (code.insert key entry) = (codeMap code).update (key, entry) := by
  apply HolFiniteMapExact.ext
  funext other
  simp only [codeMap, HolFiniteMapExact.update, FUPDATE, Std.HashMap.getElem?_insert]

theorem decls_congr {s t : SState} (h : s = t) (ds : DecidablePred s.memaddrs)
    (dt : DecidablePred t.memaddrs) (decls : List (DeclHOL 64)) :
    @evaluateDeclsHOLFinite 64 _ _ s ds decls = @evaluateDeclsHOLFinite 64 _ _ t dt decls := by
  subst h
  rw [Subsingleton.elim ds dt]

theorem cDecls_correct (decls : List (DeclHOL 64)) (c : CState) :
    @evaluateDeclsHOLFinite 64 _ _ (view c) ordinaryDecidable decls = (cDecls c decls).map view := by
  induction decls generalizing c with
  | nil => rfl
  | cons declaration rest ih =>
    cases declaration with
    | name => exact ih c
    | decl shape name expression =>
      simp only [evaluateDeclsHOLFinite, cDecls]
      have e1 : @evalHOLFinite 64 _ _ (emptyLocalsHOLFinite (view c)) ordinaryDecidable expression =
          ev (cemptyLocals c) expression := ev_eq (cemptyLocals c) expression
      rw [e1]
      cases h : ev (cemptyLocals c) expression with
      | none => rfl
      | some value =>
        dsimp only
        by_cases s : shapeEqHOL shape (shapeOfHOLExact value) = true <;>
          simp only [s, if_true, if_false, Bool.false_eq_true, Option.map_none]
        exact (decls_congr (view_csetGlobal name value c).symm _ ordinaryDecidable rest).trans (ih _)
    | function declaration =>
      simp only [evaluateDeclsHOLFinite, cDecls, vstructs]
      by_cases w : ((declaration.params.all fun parameter =>
          isWfShapeExactHOL c.structs parameter.snd) &&
            isWfShapeExactHOL c.structs declaration.returnShape) = true <;>
        simp only [w, if_true, if_false, Bool.false_eq_true, Option.map_none]
      let entry : CodeEntry := (declaration.params, declaration.body, declaration.returnShape)
      rw [← ih { c with code := c.code.insert declaration.name entry }]
      exact decls_congr (by simp only [view, codeMap_insert]; rfl) _ _ rest
    | exnDecl exceptionName shape =>
      simp only [evaluateDeclsHOLFinite, cDecls, vstructs, veshapes]
      by_cases w : ((alookup c.eshapes exceptionName).isNone &&
          isWfShapeExactHOL c.structs shape) = true <;>
        simp only [w, if_true, if_false, Bool.false_eq_true, Option.map_none]
      rw [← ih { c with eshapes := aset c.eshapes exceptionName shape }]
      exact decls_congr (by simp only [view, amap_aset]) _ _ rest

theorem view_cinitial (input : Guest.InputBlob) (structs : StructContextExact) :
    view (cinitial (inputArray input) structs) = { sourceInitialState input with structs := structs } := by
  simp only [view, cinitial, sourceInitialState, sourceFfi, initialHolFfiState, arrayHost_eq]
  congr 1
  all_goals first
    | exact HolFiniteMapExact.ext rfl
    | exact HolFiniteMapExact.ext (funext fun key => by simp [codeMap, HolFiniteMapExact.empty])
    | (funext address; simp [memoryOf])

/-- A concrete terminal FFI run determines the unclocked source semantics.
(From `InitE.SourceRun` on the score branch.) -/
theorem source_run_observations {width : Nat} [NeZero width] {σ : Type}
    (s : PanSemStateFiniteExact width σ) (p : ProgHOL width)
    (k₁ k₂ : Nat) (r₁ r₂ : Option (PanSemResultExact width))
    (t₁ t₂ : PanSemStateFiniteExact width σ)
    (run₁ : evaluateHOLFiniteState { s with clock := k₁ } p = (r₁, t₁))
    (run₂ : evaluateHOLFiniteState { s with clock := k₂ } p = (r₂, t₂))
    (non₁ : r₁ ≠ some .timeOut) (non₂ : r₂ ≠ some .timeOut) :
    r₁ = r₂ ∧ t₁.ffi.ioEvents = t₂.ffi.ioEvents := by
  have a := panPropsEvaluateAddClockEq p { s with clock := k₁ } r₁ t₁ k₂ ⟨run₁, non₁⟩
  have b := panPropsEvaluateAddClockEq p { s with clock := k₂ } r₂ t₂ k₁ ⟨run₂, non₂⟩
  dsimp only at a b
  rw [Nat.add_comm k₂ k₁, a] at b
  exact ⟨congrArg Prod.fst b,
    congrArg (fun result => result.2.ffi.ioEvents) b⟩

theorem source_semantics_of_final_run {width : Nat} [NeZero width] {σ : Type}
    (s : PanSemStateFiniteExact width σ) (start : MlS) (clock : Nat)
    (event : HolFinalEvent) (post : PanSemStateFiniteExact width σ)
    (run : evaluateHOLFiniteState { s with clock := clock } (.call none start []) =
      (some (.finalFfi event), post)) :
    semantics s start = .terminate (.ffiOutcome event) post.ffi.ioEvents := by
  have observations (k : Nat) (r : Option (PanSemResultExact width))
      (t : PanSemStateFiniteExact width σ)
      (other : evaluateHOLFiniteState { s with clock := k } (.call none start []) = (r, t))
      (non : r ≠ some .timeOut) :
      r = some (.finalFfi event) ∧ t.ffi.ioEvents = post.ffi.ioEvents :=
    source_run_observations s _ k clock r _ t post other run non (by simp)
  unfold semantics
  dsimp only
  have noFail : ¬ ∃ k, (match (evaluateHOLFiniteState
      { s with clock := k } (.call none start [])).1 with
      | some .timeOut => False
      | some (.finalFfi _) => False
      | some (.returned _) => False
      | _ => True) := by
    rintro ⟨k, bad⟩
    generalize h : evaluateHOLFiniteState { s with clock := k } (.call none start []) = pair at bad
    rcases pair with ⟨r, t⟩
    have non : r ≠ some .timeOut := by intro equal; simp [equal] at bad
    have equal := (observations k r t h non).1
    simp [equal] at bad
  split
  next bad => exact False.elim (noFail bad)
  next _ =>
    have choice : holOptionSome (fun res => ∃ k t r outcome,
        evaluateHOLFiniteState { s with clock := k } (.call none start []) = (r, t) ∧
        (match r with
         | some (.finalFfi e) => outcome = HolOutcome.ffiOutcome e
         | some (.returned _) => outcome = HolOutcome.success
         | _ => False) ∧
        res = HolBehaviour.terminate outcome t.ffi.ioEvents) =
        some (.terminate (.ffiOutcome event) post.ffi.ioEvents) := by
      apply HolLList.holOptionSome_eq_some
      · exact ⟨clock, post, _, _, run, rfl, rfl⟩
      · rintro result ⟨k, t, r, outcome, other, terminal, rfl⟩
        have non : r ≠ some .timeOut := by intro equal; simp [equal] at terminal
        obtain ⟨equal, trace⟩ := observations k r t other non
        simp only [equal] at terminal
        rw [terminal, trace]
    split
    next result selected =>
      have equal : some result = some (.terminate (.ffiOutcome event) post.ffi.ioEvents) :=
        selected.symm.trans choice
      exact Option.some.inj equal
    next selected =>
      have equal : (none : Option HolBehaviour) =
          some (.terminate (.ffiOutcome event) post.ffi.ioEvents) := selected.symm.trans choice
      cases equal

theorem evaluate_view (c : CState) (p : Prog) :
    evaluateHOLFiniteState (view c) p = ((cEval p c).1, view (cEval p c).2) := by
  rw [evaluateHOLFiniteState_eq_withDeciders (hmem := ordinaryDecidable)
    (hshared := sharedDecidable)]
  unfold evaluateHOLFiniteStateWithDeciders
  rw [cEval_correct p c]

/-- If the runner ends `main` in a final FFI call, that is the source behaviour,
and its events are the runner's, oldest first. -/
theorem crun_final (input : Guest.InputBlob) (clock : Nat) (event : HolFinalEvent)
    (final : CState) (run : crun input clock = some (some (.finalFfi event), final)) :
    sourceBehaviour input = .terminate (.ffiOutcome event) final.events.reverse := by
  unfold crun at run
  unfold sourceBehaviour semanticsDecls
  split at run
  · cases run
  · rename_i structs hs
    simp only [guestDecls] at hs
    rw [hs]
    dsimp only
    split at run
    · cases run
    · rename_i entry he
      have key : ∀ ds, @evaluateDeclsHOLFinite 64 _ _
          { sourceInitialState input with structs := structs } ds
          (Guest.Software.guestAst.map declToHOL) = some (view entry) := fun ds =>
        (decls_congr (view_cinitial input structs).symm ds ordinaryDecidable _).trans
          (by rw [← guestDecls, cDecls_correct, he]; rfl)
      rw [key]
      dsimp only
      rw [Option.some.injEq] at run
      have step := evaluate_view { entry with clock := clock } mainCall
      rw [run] at step
      exact source_semantics_of_final_run (view entry) _ clock event (view final) step

/-- What `eest-runner` reports for a run that ends in a final FFI call: the
source behaviour, and the output bytes it writes. -/
theorem crun_report (input : Guest.InputBlob) (clock count : Nat) (event : HolFinalEvent)
    (final : CState) (run : crun input clock = some (some (.finalFfi event), final)) :
    sourceBehaviour input = .terminate (.ffiOutcome event) final.events.reverse ∧
      ∀ i (_ : i < count) (bound : i < 65536),
        (outputBytes (inputArray input) final.events.reverse count)[i]? =
          some (outputByte input final.events.reverse ⟨i, bound⟩) :=
  ⟨crun_final input clock event final run,
    fun i inside bound => outputBytes_eq input _ count i inside bound⟩

end Runner
