import InitE.BackendStages.TargetChecks.Data0_526
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
def localLabels1_526 : List (Nat × Nat) :=
[(8, 373912), (7, 373896), (3, 373884), (2, 373860), (6, 373800), (1, 373736), (5, 373732)]
def Reencode1_526 : LabSem.LabSectionHOL 64 :=
Reencode0_526
end InitE.BackendStages.TargetChecks
