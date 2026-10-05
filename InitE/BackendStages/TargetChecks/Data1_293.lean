import InitE.BackendStages.TargetChecks.Data0_293
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
def localLabels1_293 : List (Nat × Nat) :=
[(12, 194776), (9, 194760), (11, 194748), (10, 194732), (8, 194696), (7, 194688), (3, 194660), (2, 194616), (6, 194556),
  (1, 194500), (5, 194496)]
def Reencode1_293 : LabSem.LabSectionHOL 64 :=
Reencode0_293
end InitE.BackendStages.TargetChecks
