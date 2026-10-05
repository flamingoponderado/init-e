import InitE.BackendStages.TargetChecks.CorrectData0_250
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
def localLabels1_250 : List (Nat × Nat) :=
[(12, 140316), (11, 140300), (5, 140288), (4, 140264), (10, 140204), (9, 140168), (3, 140152), (2, 140124), (8, 140064),
  (1, 140012), (7, 140008)]
def Reencode1_250 : LabSem.LabSectionHOL 64 :=
Reencode0_250
end InitE.BackendStages.TargetChecks.Correct
