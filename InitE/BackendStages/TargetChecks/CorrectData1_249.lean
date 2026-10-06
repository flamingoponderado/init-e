import InitE.BackendStages.TargetChecks.CorrectData0_249
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
def localLabels1_249 : List (Nat × Nat) :=
[(24, 139988), (23, 139972), (11, 139960), (10, 139936), (22, 139876), (21, 139844), (9, 139828), (8, 139800),
  (20, 139740), (19, 139708), (7, 139696), (6, 139672), (18, 139612), (17, 139576), (5, 139560), (4, 139528),
  (16, 139468), (15, 139428), (3, 139412), (2, 139380), (14, 139320), (1, 139272), (13, 139268)]
def Reencode1_249 : LabSem.LabSectionHOL 64 :=
Reencode0_249
end InitE.BackendStages.TargetChecks.Correct
