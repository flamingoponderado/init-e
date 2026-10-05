import InitE.BackendStages.TargetChecks.Data0_227
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
def localLabels1_227 : List (Nat × Nat) :=
[(2, 85928), (1, 85900)]
def Reencode1_227 : LabSem.LabSectionHOL 64 :=
Reencode0_227
end InitE.BackendStages.TargetChecks
