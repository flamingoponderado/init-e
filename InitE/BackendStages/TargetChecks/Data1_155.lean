import InitE.BackendStages.TargetChecks.Data0_155
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
def localLabels1_155 : List (Nat × Nat) :=
[(12, 41724), (11, 41688), (5, 41676), (4, 41648), (10, 41588), (9, 41536), (3, 41528), (2, 41504), (8, 41444),
  (1, 41408), (7, 41404)]
def Reencode1_155 : LabSem.LabSectionHOL 64 :=
Reencode0_155
end InitE.BackendStages.TargetChecks
