import InitE.BackendStages.TargetChecks.Data0_102
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
def localLabels1_102 : List (Nat × Nat) :=
[(3, 12736), (2, 12724), (1, 12692)]
def Reencode1_102 : LabSem.LabSectionHOL 64 :=
Reencode0_102
end InitE.BackendStages.TargetChecks
