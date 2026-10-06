import InitE.BackendStages.TargetChecks.Data0_275
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
def localLabels1_275 : List (Nat × Nat) :=
[(9, 170036), (8, 170016), (7, 169988), (3, 169976), (2, 169948), (6, 169888), (1, 169840), (5, 169836)]
def Reencode1_275 : LabSem.LabSectionHOL 64 :=
Reencode0_275
end InitE.BackendStages.TargetChecks
