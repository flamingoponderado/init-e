import InitE.BackendStages.TargetChecks.Data0_398
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
def localLabels1_398 : List (Nat × Nat) :=
[(8, 274688), (7, 274672), (3, 274660), (2, 274636), (6, 274576), (1, 274516), (5, 274512)]
def Reencode1_398 : LabSem.LabSectionHOL 64 :=
Reencode0_398
end InitE.BackendStages.TargetChecks
