import InitE.BackendStages.TargetChecks.Data0_778
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
def localLabels1_778 : List (Nat × Nat) :=
[(2, 762004), (1, 761840)]
def Reencode1_778 : LabSem.LabSectionHOL 64 :=
Reencode0_778
end InitE.BackendStages.TargetChecks
