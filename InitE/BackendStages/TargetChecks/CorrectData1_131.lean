import InitE.BackendStages.TargetChecks.CorrectData0_131
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
def localLabels1_131 : List (Nat × Nat) :=
[(8, 26728), (7, 26700), (3, 26688), (2, 26664), (6, 26604), (1, 26572), (5, 26568)]
def Reencode1_131 : LabSem.LabSectionHOL 64 :=
Reencode0_131
end InitE.BackendStages.TargetChecks.Correct
