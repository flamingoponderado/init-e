import InitE.BackendStages.TargetChecks.Initial726
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
def localLabels0_726 : List (Nat × Nat) :=
[(2, 715644), (1, 715636)]
def Reencode0_726 : LabSem.LabSectionHOL 64 :=
Initial726
end InitE.BackendStages.TargetChecks.Correct
