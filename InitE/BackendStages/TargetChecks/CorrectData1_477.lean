import InitE.BackendStages.TargetChecks.CorrectData0_477
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
def localLabels1_477 : List (Nat × Nat) :=
[(3, 338452), (2, 338396), (1, 338348)]
def Reencode1_477 : LabSem.LabSectionHOL 64 :=
Reencode0_477
end InitE.BackendStages.TargetChecks.Correct
