import InitE.BackendStages.TargetChecks.CorrectData0_446
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
def localLabels1_446 : List (Nat × Nat) :=
[(18, 304132), (17, 304104), (5, 304084), (4, 304048), (16, 303988), (11, 303948), (15, 303928), (14, 303884),
  (13, 303868), (12, 303856), (10, 303812), (9, 303784), (3, 303760), (2, 303720), (8, 303660), (1, 303616),
  (7, 303612)]
def Reencode1_446 : LabSem.LabSectionHOL 64 :=
Reencode0_446
end InitE.BackendStages.TargetChecks.Correct
