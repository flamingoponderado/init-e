import InitE.BackendStages.TargetChecks.CorrectData0_527
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
def localLabels1_527 : List (Nat × Nat) :=
[(17, 374436), (16, 374400), (15, 374372), (7, 374356), (6, 374324), (14, 374264), (13, 374228), (5, 374204),
  (4, 374168), (12, 374108), (11, 374060), (3, 374052), (2, 374028), (10, 373968), (1, 373936), (9, 373932)]
def Reencode1_527 : LabSem.LabSectionHOL 64 :=
Reencode0_527
end InitE.BackendStages.TargetChecks.Correct
