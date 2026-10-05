import InitE.BackendStages.TargetChecks.Data0_445
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
def localLabels1_445 : List (Nat × Nat) :=
[(12, 303592), (11, 303556), (5, 303528), (4, 303484), (10, 303424), (9, 303388), (3, 303352), (2, 303300), (8, 303240),
  (1, 303188), (7, 303184)]
def Reencode1_445 : LabSem.LabSectionHOL 64 :=
Reencode0_445
end InitE.BackendStages.TargetChecks
