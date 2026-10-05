import InitE.BackendStages.TargetChecks.CorrectData0_80
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
def localLabels1_80 : List (Nat × Nat) :=
[(6, 9704), (3, 9692), (5, 9680), (4, 9668), (2, 9636), (1, 9624)]
def Reencode1_80 : LabSem.LabSectionHOL 64 :=
Reencode0_80
end InitE.BackendStages.TargetChecks.Correct
