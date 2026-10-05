import InitE.BackendStages.TargetChecks.CorrectData0_323
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
def localLabels1_323 : List (Nat × Nat) :=
[(26, 220172), (25, 220132), (23, 220128), (21, 220120), (9, 220092), (8, 220048), (20, 219988), (22, 219952),
  (19, 219912), (7, 219888), (6, 219848), (18, 219788), (17, 219748), (5, 219736), (4, 219708), (16, 219648),
  (15, 219604), (14, 219596), (13, 219576), (3, 219556), (2, 219520), (12, 219460), (24, 219400), (1, 219364),
  (11, 219360)]
def Reencode1_323 : LabSem.LabSectionHOL 64 :=
Reencode0_323
end InitE.BackendStages.TargetChecks.Correct
