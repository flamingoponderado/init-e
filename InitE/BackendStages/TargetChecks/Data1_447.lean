import InitE.BackendStages.TargetChecks.Data0_447
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
def localLabels1_447 : List (Nat × Nat) :=
[(12, 304500), (11, 304468), (5, 304448), (4, 304412), (10, 304352), (9, 304316), (3, 304296), (2, 304260), (8, 304200),
  (1, 304156), (7, 304152)]
def Reencode1_447 : LabSem.LabSectionHOL 64 :=
Reencode0_447
end InitE.BackendStages.TargetChecks
