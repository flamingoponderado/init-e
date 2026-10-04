import InitE.SourceFacts
import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileProgMaxDepth
import Guest.AstParse
import Flapjack.Pancake.Proofs.PanToTarget.NativeSourceCorrect

namespace InitE
open Flapjack Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target

private theorem analyzeSourceStack_eq (declarations : List (Pancake.PanLang.DeclHOL 64)) :
    (compileProgMaxAsmDepthExecutable RiscVConfig.pancakeRiscVBackendConfig
      riscvConfig declarations).2 = analyzeSourceStack declarations := by
  unfold compileProgMaxAsmDepthExecutable analyzeSourceStack
  simp only []

/-- The analyzed stack bound is precisely the bound used in compiler correctness. -/
theorem sourceLogicalStackBound_eq :
    (compileProgMaxAsmExecutable RiscVConfig.pancakeRiscVBackendConfig
      riscvConfig sourceDeclarations).2 = some 538 := by
  rw [← compileProgMaxAsmFast_eq, ← compileProgMaxAsmDepthExecutable_eq]
  rw [analyzeSourceStack_eq]
  simpa only [sourceStackBound] using sourceStackBound_eq


theorem compiledSourceDeclarations_eq (out : RiscV.NativeSource.Output)
    (h : RiscV.NativeSource.compile Guest.guestSource = .ok out) :
    out.declarations = sourceDeclarations := by
  obtain ⟨parsed, hp, hd, _⟩ := nativeSourceCompile_ok h
  have hparse : Parser.parseTopDecs (fun value => BitVec.ofInt 64 value)
      Guest.guestSource = .ok Guest.guestAst := Guest.guestParse_eq_ast
  rw [hparse] at hp
  cases Except.ok.inj hp
  exact hd

theorem nativeSourceLogicalBound_eq (out : RiscV.NativeSource.Output)
    (h : out.declarations = sourceDeclarations) : nativeSourceLogicalBound out = some 538 := by
  unfold nativeSourceLogicalBound
  rw [h]
  exact sourceLogicalStackBound_eq

end InitE
