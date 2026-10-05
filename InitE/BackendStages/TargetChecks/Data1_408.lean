import InitE.BackendStages.TargetChecks.Data0_408
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
def localLabels1_408 : List (Nat × Nat) :=
[(17, 280548), (16, 280532), (7, 280520), (6, 280492), (15, 280432), (14, 280396), (13, 280372), (5, 280356),
  (4, 280324), (12, 280264), (11, 280212), (3, 280200), (2, 280176), (10, 280116), (1, 280052), (9, 280048)]
def Reencode1_408 : LabSem.LabSectionHOL 64 :=
Reencode0_408
end InitE.BackendStages.TargetChecks
