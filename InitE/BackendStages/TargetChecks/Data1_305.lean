import InitE.BackendStages.TargetChecks.Data0_305
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
def localLabels1_305 : List (Nat × Nat) :=
[(13, 204120), (12, 204108), (10, 204088), (4, 204076), (3, 204052), (9, 203992), (11, 203952), (5, 203924),
  (2, 203900), (8, 203840), (1, 203804), (7, 203800)]
def Reencode1_305 : LabSem.LabSectionHOL 64 :=
Reencode0_305
end InitE.BackendStages.TargetChecks
