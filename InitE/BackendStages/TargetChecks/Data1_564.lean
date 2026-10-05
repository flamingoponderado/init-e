import InitE.BackendStages.TargetChecks.Data0_564
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
def localLabels1_564 : List (Nat × Nat) :=
[(16, 408508), (15, 408492), (7, 408480), (6, 408456), (14, 408396), (13, 408364), (5, 408356), (4, 408336),
  (12, 408276), (11, 408228), (3, 408220), (2, 408200), (10, 408140), (1, 408104), (9, 408100)]
def Reencode1_564 : LabSem.LabSectionHOL 64 :=
Reencode0_564
end InitE.BackendStages.TargetChecks
