import InitE.BackendStages.TargetChecks.CorrectData0_78
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
def localLabels1_78 : List (Nat × Nat) :=
[(16, 8368), (14, 8356), (15, 8344), (13, 8316), (11, 8312), (12, 8300), (10, 8184), (9, 8180), (6, 8176), (7, 8164),
  (5, 8132), (3, 8128), (4, 8116), (2, 8048), (8, 8044), (1, 8020)]
def Reencode1_78 : LabSem.LabSectionHOL 64 :=
Reencode0_78
end InitE.BackendStages.TargetChecks.Correct
