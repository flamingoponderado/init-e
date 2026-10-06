import InitE.BackendStages.TargetChecks.Data0_496
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
def localLabels1_496 : List (Nat × Nat) :=
[(8, 347844), (7, 347828), (3, 347816), (2, 347792), (6, 347732), (1, 347672), (5, 347668)]
def Reencode1_496 : LabSem.LabSectionHOL 64 :=
Reencode0_496
end InitE.BackendStages.TargetChecks
