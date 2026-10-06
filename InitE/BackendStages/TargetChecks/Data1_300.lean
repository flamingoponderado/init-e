import InitE.BackendStages.TargetChecks.Data0_300
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
def localLabels1_300 : List (Nat × Nat) :=
[(12, 197364), (11, 197340), (5, 197324), (4, 197296), (10, 197236), (9, 197196), (3, 197188), (2, 197164), (8, 197104),
  (1, 197068), (7, 197064)]
def Reencode1_300 : LabSem.LabSectionHOL 64 :=
Reencode0_300
end InitE.BackendStages.TargetChecks
