import InitE.BackendStages.TargetChecks.CorrectData0_166
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
def localLabels1_166 : List (Nat × Nat) :=
[(14, 50868), (13, 50852), (11, 50848), (5, 50828), (4, 50796), (10, 50736), (12, 50696), (9, 50676), (3, 50664),
  (2, 50636), (8, 50576), (1, 50540), (7, 50536)]
def Reencode1_166 : LabSem.LabSectionHOL 64 :=
Reencode0_166
end InitE.BackendStages.TargetChecks.Correct
