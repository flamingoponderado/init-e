import InitE.BackendStages.TargetChecks.CorrectData0_444
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
def localLabels1_444 : List (Nat × Nat) :=
[(12, 303164), (11, 303148), (5, 303136), (4, 303112), (10, 303052), (9, 303016), (3, 303004), (2, 302976), (8, 302916),
  (1, 302880), (7, 302876)]
def Reencode1_444 : LabSem.LabSectionHOL 64 :=
Reencode0_444
end InitE.BackendStages.TargetChecks.Correct
