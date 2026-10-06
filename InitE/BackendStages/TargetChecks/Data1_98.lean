import InitE.BackendStages.TargetChecks.Data0_98
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
def localLabels1_98 : List (Nat × Nat) :=
[(10, 12608), (9, 12592), (7, 12568), (3, 12556), (2, 12528), (6, 12468), (8, 12432), (1, 12400), (5, 12396)]
def Reencode1_98 : LabSem.LabSectionHOL 64 :=
Reencode0_98
end InitE.BackendStages.TargetChecks
