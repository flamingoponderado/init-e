import InitE.BackendStages.TargetChecks.Data0_67
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
def localLabels1_67 : List (Nat × Nat) :=
[(2, 6044), (1, 5924)]
def Reencode1_67 : LabSem.LabSectionHOL 64 :=
Reencode0_67
end InitE.BackendStages.TargetChecks
