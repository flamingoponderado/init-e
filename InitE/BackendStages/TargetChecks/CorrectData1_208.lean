import InitE.BackendStages.TargetChecks.CorrectData0_208
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
def localLabels1_208 : List (Nat × Nat) :=
[(9, 73620), (8, 73604), (7, 73544), (3, 73516), (2, 73472), (6, 73412), (1, 73328), (5, 73324)]
def Reencode1_208 : LabSem.LabSectionHOL 64 :=
Reencode0_208
end InitE.BackendStages.TargetChecks.Correct
