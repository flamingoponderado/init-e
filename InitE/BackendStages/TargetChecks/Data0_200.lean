import InitE.BackendStages.TargetChecks.Initial200
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
def localLabels0_200 : List (Nat × Nat) :=
[(2, 70868), (1, 70800)]
def Reencode0_200 : LabSem.LabSectionHOL 64 :=
Initial200
end InitE.BackendStages.TargetChecks
