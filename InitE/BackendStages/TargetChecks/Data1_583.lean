import InitE.BackendStages.TargetChecks.Data0_583
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
def localLabels1_583 : List (Nat × Nat) :=
[(20, 425020), (19, 425004), (9, 424992), (8, 424968), (18, 424908), (17, 424872), (7, 424864), (6, 424844),
  (16, 424784), (15, 424748), (5, 424740), (4, 424716), (14, 424656), (13, 424624), (3, 424616), (2, 424596),
  (12, 424536), (1, 424496), (11, 424492)]
def Reencode1_583 : LabSem.LabSectionHOL 64 :=
Reencode0_583
end InitE.BackendStages.TargetChecks
