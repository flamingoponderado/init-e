import InitE.BackendStages.TargetChecks.Data0_350
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
def localLabels1_350 : List (Nat × Nat) :=
[(2, 245664), (1, 245636)]
def Reencode1_350 : LabSem.LabSectionHOL 64 :=
Reencode0_350
end InitE.BackendStages.TargetChecks
