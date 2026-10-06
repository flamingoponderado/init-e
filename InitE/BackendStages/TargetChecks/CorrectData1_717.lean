import InitE.BackendStages.TargetChecks.CorrectData0_717
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
def localLabels1_717 : List (Nat × Nat) :=
[(2, 712576), (1, 712412)]
def Reencode1_717 : LabSem.LabSectionHOL 64 :=
Reencode0_717
end InitE.BackendStages.TargetChecks.Correct
