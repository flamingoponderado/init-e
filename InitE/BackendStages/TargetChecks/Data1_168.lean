import InitE.BackendStages.TargetChecks.Data0_168
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
def localLabels1_168 : List (Nat × Nat) :=
[(16, 51648), (15, 51628), (5, 51612), (4, 51580), (14, 51520), (13, 51472), (12, 51444), (11, 51424), (3, 51408),
  (2, 51376), (10, 51316), (9, 51260), (8, 51232), (1, 51200), (7, 51196)]
def Reencode1_168 : LabSem.LabSectionHOL 64 :=
Reencode0_168
end InitE.BackendStages.TargetChecks
