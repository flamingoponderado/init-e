import InitE.BackendStages.TargetChecks.CorrectData0_428
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
def localLabels1_428 : List (Nat × Nat) :=
[(25, 291684), (24, 291668), (11, 291656), (10, 291632), (23, 291572), (22, 291508), (9, 291480), (8, 291436),
  (21, 291376), (20, 291344), (19, 291328), (7, 291316), (6, 291292), (18, 291232), (17, 291164), (5, 291156),
  (4, 291132), (16, 291072), (15, 291020), (3, 290996), (2, 290956), (14, 290896), (1, 290848), (13, 290844)]
def Reencode1_428 : LabSem.LabSectionHOL 64 :=
Reencode0_428
end InitE.BackendStages.TargetChecks.Correct
