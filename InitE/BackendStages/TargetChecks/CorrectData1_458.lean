import InitE.BackendStages.TargetChecks.CorrectData0_458
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
def localLabels1_458 : List (Nat × Nat) :=
[(11, 315204), (7, 315192), (10, 315180), (9, 315168), (8, 315156), (6, 315116), (5, 315108), (4, 315100), (3, 315072),
  (2, 315060), (1, 315028)]
def Reencode1_458 : LabSem.LabSectionHOL 64 :=
Reencode0_458
end InitE.BackendStages.TargetChecks.Correct
