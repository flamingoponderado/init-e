import InitE.BackendStages.TargetChecks.CorrectData1_669
import InitE.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
def Alignment669 : LabSem.LabSectionHOL 64 :=
{ sectionId := 669,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 669 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 669 2 0] }
theorem Alignment669_eq : LabToTarget.linesUpdLabLen 533252 TargetChecks.Correct.Reencode1_669.lines [] = (Alignment669.lines, 533256) := by
  with_unfolding_all rfl
#print axioms Alignment669_eq
end InitE.BackendStages
