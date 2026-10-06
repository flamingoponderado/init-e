import InitE.BackendStages.TargetChecks.Initial99
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
def localLabels0_99 : List (Nat × Nat) :=
[(2, 12632), (1, 12612)]
def Reencode0_99 : LabSem.LabSectionHOL 64 :=
Initial99
end InitE.BackendStages.TargetChecks.Correct
