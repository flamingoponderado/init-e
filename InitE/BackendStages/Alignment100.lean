import InitE.BackendStages.TargetChecks.Data1_100
import InitE.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
def Alignment100 : LabSem.LabSectionHOL 64 :=
{ sectionId := 100,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 100 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 100 2 0] }
theorem Alignment100_eq : LabToTarget.linesUpdLabLen 11024 TargetChecks.Reencode1_100.lines [] = (Alignment100.lines, 11028) := by
  with_unfolding_all rfl
#print axioms Alignment100_eq
end InitE.BackendStages
