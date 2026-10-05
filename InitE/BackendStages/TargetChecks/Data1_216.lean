import InitE.BackendStages.TargetChecks.Data0_216
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
def localLabels1_216 : List (Nat × Nat) :=
[(18, 81844), (17, 81828), (15, 81824), (7, 81812), (6, 81784), (14, 81724), (16, 81692), (13, 81672), (5, 81644),
  (4, 81600), (12, 81540), (11, 81504), (3, 81432), (2, 81344), (10, 81284), (1, 81204), (9, 81200)]
def Reencode1_216 : LabSem.LabSectionHOL 64 :=
Reencode0_216
end InitE.BackendStages.TargetChecks
