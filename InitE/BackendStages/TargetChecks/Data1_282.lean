import InitE.BackendStages.TargetChecks.Data0_282
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
def localLabels1_282 : List (Nat × Nat) :=
[(8, 184928), (7, 184912), (3, 184900), (2, 184872), (6, 184812), (1, 184764), (5, 184760)]
def Reencode1_282 : LabSem.LabSectionHOL 64 :=
Reencode0_282
end InitE.BackendStages.TargetChecks
