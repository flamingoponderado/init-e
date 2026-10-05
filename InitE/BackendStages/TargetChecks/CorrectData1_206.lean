import InitE.BackendStages.TargetChecks.CorrectData0_206
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
def localLabels1_206 : List (Nat × Nat) :=
[(18, 73016), (17, 73000), (15, 72996), (7, 72984), (6, 72956), (14, 72896), (16, 72828), (13, 72808), (5, 72796),
  (4, 72768), (12, 72708), (11, 72672), (3, 72632), (2, 72576), (10, 72516), (1, 72452), (9, 72448)]
def Reencode1_206 : LabSem.LabSectionHOL 64 :=
Reencode0_206
end InitE.BackendStages.TargetChecks.Correct
