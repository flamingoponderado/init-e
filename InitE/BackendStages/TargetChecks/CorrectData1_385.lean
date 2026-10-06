import InitE.BackendStages.TargetChecks.CorrectData0_385
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
def localLabels1_385 : List (Nat × Nat) :=
[(7, 265676), (3, 265656), (6, 265644), (5, 265632), (4, 265624), (2, 265596), (1, 265584)]
def Reencode1_385 : LabSem.LabSectionHOL 64 :=
Reencode0_385
end InitE.BackendStages.TargetChecks.Correct
