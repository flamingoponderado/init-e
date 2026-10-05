import InitE.BackendStages.TargetChecks.Initial351
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
def localLabels0_351 : List (Nat × Nat) :=
[(2, 245680), (1, 245668)]
def Reencode0_351 : LabSem.LabSectionHOL 64 :=
Initial351
end InitE.BackendStages.TargetChecks
