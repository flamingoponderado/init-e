import InitE.BackendStages.TargetChecks.CorrectData0_96
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
def localLabels1_96 : List (Nat × Nat) :=
[(8, 12312), (7, 12296), (3, 12284), (2, 12260), (6, 12200), (1, 12168), (5, 12164)]
def Reencode1_96 : LabSem.LabSectionHOL 64 :=
Reencode0_96
end InitE.BackendStages.TargetChecks.Correct
