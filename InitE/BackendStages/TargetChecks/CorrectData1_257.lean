import InitE.BackendStages.TargetChecks.CorrectData0_257
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
def localLabels1_257 : List (Nat × Nat) :=
[(17, 147900), (11, 147880), (16, 147852), (15, 147824), (13, 147820), (5, 147780), (4, 147728), (12, 147668),
  (14, 147604), (10, 147560), (9, 147552), (3, 147524), (2, 147480), (8, 147420), (1, 147372), (7, 147368)]
def Reencode1_257 : LabSem.LabSectionHOL 64 :=
Reencode0_257
end InitE.BackendStages.TargetChecks.Correct
