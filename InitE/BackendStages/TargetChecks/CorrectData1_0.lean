import InitE.BackendStages.TargetChecks.CorrectData0_0
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
def localLabels1_0 : List (Nat × Nat) :=
[(6, 780), (1, 772), (5, 124), (4, 64), (3, 56), (2, 48)]
def Reencode1_0 : LabSem.LabSectionHOL 64 :=
Reencode0_0
end InitE.BackendStages.TargetChecks.Correct
