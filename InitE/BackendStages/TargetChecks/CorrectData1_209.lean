import InitE.BackendStages.TargetChecks.CorrectData0_209
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
def localLabels1_209 : List (Nat × Nat) :=
[(2, 73632), (1, 73624)]
def Reencode1_209 : LabSem.LabSectionHOL 64 :=
Reencode0_209
end InitE.BackendStages.TargetChecks.Correct
