import InitE.BackendStages.TargetChecks.Data0_648
import InitE.BackendStages.TargetChecks.CorrectData1_648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.TargetChecks
def localLabels1_648 : List (Nat × Nat) := Correct.localLabels1_648
def Reencode1_648 : LabSem.LabSectionHOL 64 := Correct.Reencode1_648
end InitE.BackendStages.TargetChecks
