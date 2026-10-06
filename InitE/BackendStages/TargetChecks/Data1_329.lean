import InitE.BackendStages.TargetChecks.Data0_329
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
def localLabels1_329 : List (Nat × Nat) :=
[(13, 225300), (12, 225284), (11, 225260), (9, 225256), (3, 225240), (2, 225212), (8, 225152), (10, 225112),
  (7, 225092), (6, 225064), (1, 225036), (5, 225032)]
def Reencode1_329 : LabSem.LabSectionHOL 64 :=
Reencode0_329
end InitE.BackendStages.TargetChecks
