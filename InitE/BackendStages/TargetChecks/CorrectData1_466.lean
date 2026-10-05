import InitE.BackendStages.TargetChecks.CorrectData0_466
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
def localLabels1_466 : List (Nat × Nat) :=
[(9, 336380), (8, 336364), (3, 336352), (2, 336324), (7, 336264), (6, 336216), (1, 336192), (5, 336188)]
def Reencode1_466 : LabSem.LabSectionHOL 64 :=
Reencode0_466
end InitE.BackendStages.TargetChecks.Correct
