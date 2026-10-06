import InitE.BackendStages.TargetChecks.CorrectData0_76
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
def localLabels1_76 : List (Nat × Nat) :=
[(2, 7616), (1, 7584)]
def Reencode1_76 : LabSem.LabSectionHOL 64 :=
Reencode0_76
end InitE.BackendStages.TargetChecks.Correct
