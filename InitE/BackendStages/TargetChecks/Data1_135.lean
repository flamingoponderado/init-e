import InitE.BackendStages.TargetChecks.Data0_135
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
def localLabels1_135 : List (Nat × Nat) :=
[(15, 28688), (14, 28680), (13, 28628), (5, 28596), (4, 28552), (12, 28492), (11, 28436), (10, 28364), (3, 28352),
  (2, 28324), (9, 28264), (8, 28200), (1, 28136), (7, 28132)]
def Reencode1_135 : LabSem.LabSectionHOL 64 :=
Reencode0_135
end InitE.BackendStages.TargetChecks
