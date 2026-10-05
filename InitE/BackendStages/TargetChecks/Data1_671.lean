import InitE.BackendStages.TargetChecks.Data0_671
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
def localLabels1_671 : List (Nat × Nat) :=
[(2, 593532), (1, 593428)]
def Reencode1_671 : LabSem.LabSectionHOL 64 :=
Reencode0_671
end InitE.BackendStages.TargetChecks
