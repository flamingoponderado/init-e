import InitE.BackendStages.TargetChecks.CorrectData0_342
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
def localLabels1_342 : List (Nat × Nat) :=
[(11, 235296), (10, 235280), (9, 235252), (8, 235228), (7, 235200), (3, 235188), (2, 235160), (6, 235100), (1, 235052),
  (5, 235048)]
def Reencode1_342 : LabSem.LabSectionHOL 64 :=
Reencode0_342
end InitE.BackendStages.TargetChecks.Correct
