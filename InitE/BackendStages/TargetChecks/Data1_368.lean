import InitE.BackendStages.TargetChecks.Data0_368
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
def localLabels1_368 : List (Nat × Nat) :=
[(12, 253120), (11, 253072), (5, 253052), (4, 253016), (10, 252956), (9, 252912), (3, 252900), (2, 252872), (8, 252812),
  (1, 252764), (7, 252760)]
def Reencode1_368 : LabSem.LabSectionHOL 64 :=
Reencode0_368
end InitE.BackendStages.TargetChecks
