import InitE.BackendStages.TargetChecks.Data0_97
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
def localLabels1_97 : List (Nat × Nat) :=
[(5, 12376), (3, 12364), (4, 12352), (2, 12324), (1, 12316)]
def Reencode1_97 : LabSem.LabSectionHOL 64 :=
Reencode0_97
end InitE.BackendStages.TargetChecks
