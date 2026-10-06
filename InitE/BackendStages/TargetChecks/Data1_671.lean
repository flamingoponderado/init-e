import InitE.BackendStages.TargetChecks.Data0_671
import InitE.BackendStages.TargetChecks.CorrectData1_671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.TargetChecks
def localLabels1_671 : List (Nat × Nat) := Correct.localLabels1_671
def Reencode1_671 : LabSem.LabSectionHOL 64 := Correct.Reencode1_671
end InitE.BackendStages.TargetChecks
