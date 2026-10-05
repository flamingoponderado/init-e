import InitE.BackendStages.TargetChecks.Data0_352
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
def localLabels1_352 : List (Nat × Nat) :=
[(2, 245712), (1, 245684)]
def Reencode1_352 : LabSem.LabSectionHOL 64 :=
Reencode0_352
end InitE.BackendStages.TargetChecks
