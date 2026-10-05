import InitE.BackendStages.TargetChecks.Data0_480
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
def localLabels1_480 : List (Nat × Nat) :=
[(14, 339620), (13, 339604), (9, 339600), (3, 339588), (2, 339564), (8, 339504), (12, 339456), (11, 339448),
  (5, 339436), (4, 339412), (10, 339352), (1, 339296), (7, 339292)]
def Reencode1_480 : LabSem.LabSectionHOL 64 :=
Reencode0_480
end InitE.BackendStages.TargetChecks
