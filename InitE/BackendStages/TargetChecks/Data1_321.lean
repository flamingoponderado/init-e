import InitE.BackendStages.TargetChecks.Data0_321
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
def localLabels1_321 : List (Nat × Nat) :=
[(21, 218748), (20, 218732), (9, 218716), (8, 218688), (19, 218628), (18, 218592), (16, 218568), (6, 218556),
  (5, 218532), (15, 218472), (17, 218432), (7, 218404), (4, 218380), (14, 218320), (13, 218284), (3, 218260),
  (2, 218220), (12, 218160), (1, 218112), (11, 218108)]
def Reencode1_321 : LabSem.LabSectionHOL 64 :=
Reencode0_321
end InitE.BackendStages.TargetChecks
