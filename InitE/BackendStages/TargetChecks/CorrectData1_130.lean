import InitE.BackendStages.TargetChecks.CorrectData0_130
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
def localLabels1_130 : List (Nat × Nat) :=
[(8, 26548), (7, 26532), (3, 26520), (2, 26492), (6, 26432), (1, 26400), (5, 26396)]
def Reencode1_130 : LabSem.LabSectionHOL 64 :=
Reencode0_130
end InitE.BackendStages.TargetChecks.Correct
