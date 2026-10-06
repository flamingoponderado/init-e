import InitE.BackendStages.TargetChecks.Data0_414
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
def localLabels1_414 : List (Nat × Nat) :=
[(13, 284424), (12, 284396), (11, 284360), (5, 284348), (4, 284316), (10, 284256), (9, 284208), (3, 284200),
  (2, 284176), (8, 284116), (1, 284084), (7, 284080)]
def Reencode1_414 : LabSem.LabSectionHOL 64 :=
Reencode0_414
end InitE.BackendStages.TargetChecks
