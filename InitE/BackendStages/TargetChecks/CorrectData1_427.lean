import InitE.BackendStages.TargetChecks.CorrectData0_427
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
def localLabels1_427 : List (Nat × Nat) :=
[(8, 290824), (7, 290808), (3, 290796), (2, 290772), (6, 290712), (1, 290652), (5, 290648)]
def Reencode1_427 : LabSem.LabSectionHOL 64 :=
Reencode0_427
end InitE.BackendStages.TargetChecks.Correct
