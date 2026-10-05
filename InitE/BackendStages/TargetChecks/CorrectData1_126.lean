import InitE.BackendStages.TargetChecks.CorrectData0_126
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
def localLabels1_126 : List (Nat × Nat) :=
[(6, 21444), (3, 21432), (5, 21420), (4, 21412), (2, 21368), (1, 21360)]
def Reencode1_126 : LabSem.LabSectionHOL 64 :=
Reencode0_126
end InitE.BackendStages.TargetChecks.Correct
