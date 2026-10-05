import InitE.BackendStages.TargetChecks.Data0_289
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
def localLabels1_289 : List (Nat × Nat) :=
[(32, 193412), (31, 193396), (15, 193384), (14, 193360), (30, 193300), (29, 193248), (13, 193240), (12, 193220),
  (28, 193160), (27, 193088), (11, 193080), (10, 193056), (26, 192996), (25, 192944), (9, 192936), (8, 192912),
  (24, 192852), (23, 192800), (7, 192792), (6, 192768), (22, 192708), (21, 192656), (5, 192648), (4, 192624),
  (20, 192564), (19, 192512), (3, 192504), (2, 192480), (18, 192420), (1, 192384), (17, 192380)]
def Reencode1_289 : LabSem.LabSectionHOL 64 :=
Reencode0_289
end InitE.BackendStages.TargetChecks
