import InitE.BackendStages.TargetChecks.Initial81
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
def localLabels0_81 : List (Nat × Nat) :=
[(2, 9768), (1, 9708)]
def Reencode0_81 : LabSem.LabSectionHOL 64 :=
Initial81
end InitE.BackendStages.TargetChecks.Correct
