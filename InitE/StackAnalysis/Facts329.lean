import InitE.StackAnalysis.Data329
import InitE.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.StackAnalysis
def frame329 : Nat := 3
def slim329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call
  (Option.some
    { fst := List.cons 2 List.nil,
      snd :=
        {
          fst :=
            {
              fst :=
                Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln,
              snd := Flapjack.Spt.ln },
          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 329, snd := 2 } } } })
  (Option.some 288) List.nil
  (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 329, snd := 3 } } })
theorem frame329_eq : InitE.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized329.2.1 optimized329.2.2 = frame329 := by cbv
theorem slim329_eq : WordDepth.Executable.slim optimized329.2.2 = slim329 := by cbv
theorem frameEntry329_eq : frameEntry optimized329 = (329, frame329) := by
  unfold frameEntry
  rw [frame329_eq]
  rfl
theorem slimEntry329_eq : slimEntry optimized329 = (329, 2, slim329) := by
  unfold slimEntry
  rw [slim329_eq]
  rfl
#print axioms frame329_eq
#print axioms slim329_eq
end InitE.StackAnalysis
