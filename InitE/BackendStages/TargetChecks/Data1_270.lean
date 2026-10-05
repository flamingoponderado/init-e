import InitE.BackendStages.TargetChecks.Data0_270
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
def localLabels1_270 : List (Nat × Nat) :=
[(12, 168632), (11, 168592), (5, 168572), (4, 168540), (10, 168480), (9, 168436), (3, 168408), (2, 168368), (8, 168308),
  (1, 168252), (7, 168248)]
def Reencode1_270 : LabSem.LabSectionHOL 64 :=
Reencode0_270
end InitE.BackendStages.TargetChecks
