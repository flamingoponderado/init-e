import InitE.BackendStages.TargetChecks.CorrectData0_103
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
def localLabels1_103 : List (Nat × Nat) :=
[(6, 12828), (5, 12816), (4, 12796), (3, 12776), (2, 12756), (1, 12740)]
def Reencode1_103 : LabSem.LabSectionHOL 64 :=
Reencode0_103
end InitE.BackendStages.TargetChecks.Correct
