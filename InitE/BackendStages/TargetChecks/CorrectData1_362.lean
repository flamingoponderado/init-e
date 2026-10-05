import InitE.BackendStages.TargetChecks.CorrectData0_362
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
def localLabels1_362 : List (Nat × Nat) :=
[(15, 247484), (9, 247464), (14, 247444), (13, 247416), (5, 247384), (4, 247336), (12, 247276), (11, 247236),
  (3, 247224), (2, 247196), (10, 247136), (8, 247040), (1, 247012), (7, 247008)]
def Reencode1_362 : LabSem.LabSectionHOL 64 :=
Reencode0_362
end InitE.BackendStages.TargetChecks.Correct
