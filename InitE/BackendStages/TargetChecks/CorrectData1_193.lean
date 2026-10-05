import InitE.BackendStages.TargetChecks.CorrectData0_193
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
def localLabels1_193 : List (Nat × Nat) :=
[(2, 66100), (1, 66088)]
def Reencode1_193 : LabSem.LabSectionHOL 64 :=
Reencode0_193
end InitE.BackendStages.TargetChecks.Correct
