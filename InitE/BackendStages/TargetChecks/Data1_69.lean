import InitE.BackendStages.TargetChecks.Data0_69
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
def localLabels1_69 : List (Nat × Nat) :=
[(2, 6556), (1, 6532)]
def Reencode1_69 : LabSem.LabSectionHOL 64 :=
Reencode0_69
end InitE.BackendStages.TargetChecks
