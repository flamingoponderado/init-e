import InitE.BackendStages.TargetChecks.Data0_286
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
def localLabels1_286 : List (Nat × Nat) :=
[(13, 190060), (12, 190044), (5, 190032), (4, 190008), (11, 189948), (10, 189892), (3, 189884), (2, 189860),
  (9, 189800), (8, 189764), (1, 189724), (7, 189720)]
def Reencode1_286 : LabSem.LabSectionHOL 64 :=
Reencode0_286
end InitE.BackendStages.TargetChecks
