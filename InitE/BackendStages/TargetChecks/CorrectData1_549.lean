import InitE.BackendStages.TargetChecks.CorrectData0_549
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
def localLabels1_549 : List (Nat × Nat) :=
[(12, 392344), (11, 392328), (5, 392316), (4, 392288), (10, 392228), (9, 392180), (3, 392172), (2, 392148), (8, 392088),
  (1, 392056), (7, 392052)]
def Reencode1_549 : LabSem.LabSectionHOL 64 :=
Reencode0_549
end InitE.BackendStages.TargetChecks.Correct
