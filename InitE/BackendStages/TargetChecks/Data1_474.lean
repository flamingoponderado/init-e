import InitE.BackendStages.TargetChecks.Data0_474
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
def localLabels1_474 : List (Nat × Nat) :=
[(8, 338220), (7, 338132), (3, 338112), (2, 338076), (6, 338016), (1, 337956), (5, 337952)]
def Reencode1_474 : LabSem.LabSectionHOL 64 :=
Reencode0_474
end InitE.BackendStages.TargetChecks
