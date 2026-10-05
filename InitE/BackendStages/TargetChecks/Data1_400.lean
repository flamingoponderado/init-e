import InitE.BackendStages.TargetChecks.Data0_400
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
def localLabels1_400 : List (Nat × Nat) :=
[(17, 275944), (16, 275928), (7, 275912), (6, 275884), (15, 275824), (14, 275788), (5, 275772), (4, 275740),
  (13, 275680), (12, 275636), (11, 275612), (3, 275600), (2, 275572), (10, 275512), (1, 275480), (9, 275476)]
def Reencode1_400 : LabSem.LabSectionHOL 64 :=
Reencode0_400
end InitE.BackendStages.TargetChecks
