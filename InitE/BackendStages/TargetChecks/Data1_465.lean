import InitE.BackendStages.TargetChecks.Data0_465
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
def localLabels1_465 : List (Nat × Nat) :=
[(3, 336168), (2, 336156), (1, 336136)]
def Reencode1_465 : LabSem.LabSectionHOL 64 :=
Reencode0_465
end InitE.BackendStages.TargetChecks
