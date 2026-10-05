import InitE.BackendStages.TargetChecks.Initial86
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
def localLabels0_86 : List (Nat × Nat) :=
[(2, 10328), (1, 10276)]
def Reencode0_86 : LabSem.LabSectionHOL 64 :=
Initial86
end InitE.BackendStages.TargetChecks
