import InitE.BackendStages.TargetChecks.CorrectData0_486
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
def localLabels1_486 : List (Nat × Nat) :=
[(16, 343860), (15, 343844), (5, 343832), (4, 343808), (14, 343748), (13, 343712), (11, 343708), (3, 343688),
  (2, 343656), (10, 343596), (9, 343544), (8, 343532), (12, 343512), (1, 343488), (7, 343484)]
def Reencode1_486 : LabSem.LabSectionHOL 64 :=
Reencode0_486
end InitE.BackendStages.TargetChecks.Correct
