import InitE.BackendStages.TargetChecks.Data0_393
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
def localLabels1_393 : List (Nat × Nat) :=
[(17, 273288), (9, 273268), (16, 273252), (15, 273240), (11, 273236), (3, 273220), (2, 273192), (10, 273132),
  (14, 273096), (13, 273088), (5, 273072), (4, 273044), (12, 272984), (8, 272884), (1, 272872), (7, 272868)]
def Reencode1_393 : LabSem.LabSectionHOL 64 :=
Reencode0_393
end InitE.BackendStages.TargetChecks
