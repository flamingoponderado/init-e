import InitE.BackendStages.TargetChecks.CorrectData0_683
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
def localLabels1_683 : List (Nat × Nat) :=
[(2, 602044), (1, 602024)]
def Reencode1_683 : LabSem.LabSectionHOL 64 :=
Reencode0_683
end InitE.BackendStages.TargetChecks.Correct
