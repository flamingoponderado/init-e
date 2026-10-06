import InitE.BackendStages.TargetChecks.Data0_495
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
def localLabels1_495 : List (Nat × Nat) :=
[(8, 347648), (7, 347632), (3, 347620), (2, 347592), (6, 347532), (1, 347476), (5, 347472)]
def Reencode1_495 : LabSem.LabSectionHOL 64 :=
Reencode0_495
end InitE.BackendStages.TargetChecks
