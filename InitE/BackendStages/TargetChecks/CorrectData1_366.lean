import InitE.BackendStages.TargetChecks.CorrectData0_366
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
def localLabels1_366 : List (Nat × Nat) :=
[(15, 250984), (9, 250964), (14, 250944), (13, 250916), (5, 250884), (4, 250836), (12, 250776), (11, 250740),
  (3, 250732), (2, 250708), (10, 250648), (8, 250584), (1, 250556), (7, 250552)]
def Reencode1_366 : LabSem.LabSectionHOL 64 :=
Reencode0_366
end InitE.BackendStages.TargetChecks.Correct
