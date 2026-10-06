import InitE.BackendStages.TargetChecks.Data0_108
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
def localLabels1_108 : List (Nat × Nat) :=
[(9, 13448), (8, 13436), (7, 13420), (6, 13408), (5, 13388), (4, 13376), (3, 13356), (2, 13344), (1, 13320)]
def Reencode1_108 : LabSem.LabSectionHOL 64 :=
Reencode0_108
end InitE.BackendStages.TargetChecks
