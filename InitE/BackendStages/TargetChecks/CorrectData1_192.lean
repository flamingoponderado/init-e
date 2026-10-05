import InitE.BackendStages.TargetChecks.CorrectData0_192
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
def localLabels1_192 : List (Nat × Nat) :=
[(11, 66084), (7, 66064), (10, 66048), (9, 66036), (3, 66012), (2, 65976), (8, 65916), (6, 65828), (1, 65804),
  (5, 65800)]
def Reencode1_192 : LabSem.LabSectionHOL 64 :=
Reencode0_192
end InitE.BackendStages.TargetChecks.Correct
