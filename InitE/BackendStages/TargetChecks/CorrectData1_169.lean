import InitE.BackendStages.TargetChecks.CorrectData0_169
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
def localLabels1_169 : List (Nat × Nat) :=
[(19, 52276), (15, 52256), (18, 52232), (17, 52180), (7, 52144), (6, 52092), (16, 52032), (14, 51964), (13, 51948),
  (5, 51932), (4, 51900), (12, 51840), (11, 51804), (3, 51796), (2, 51772), (10, 51712), (1, 51672), (9, 51668)]
def Reencode1_169 : LabSem.LabSectionHOL 64 :=
Reencode0_169
end InitE.BackendStages.TargetChecks.Correct
