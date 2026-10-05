import InitE.BackendStages.TargetChecks.Data0_454
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
def localLabels1_454 : List (Nat × Nat) :=
[(13, 310132), (12, 310116), (5, 310104), (4, 310080), (11, 310020), (10, 309976), (9, 309952), (3, 309928),
  (2, 309888), (8, 309828), (1, 309760), (7, 309756)]
def Reencode1_454 : LabSem.LabSectionHOL 64 :=
Reencode0_454
end InitE.BackendStages.TargetChecks
