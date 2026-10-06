import InitE.BackendStages.TargetChecks.Data0_242
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
def localLabels1_242 : List (Nat × Nat) :=
[(16, 134280), (15, 134264), (7, 134252), (6, 134228), (14, 134168), (13, 134120), (5, 134104), (4, 134076),
  (12, 134016), (11, 133972), (3, 133944), (2, 133904), (10, 133844), (1, 133772), (9, 133768)]
def Reencode1_242 : LabSem.LabSectionHOL 64 :=
Reencode0_242
end InitE.BackendStages.TargetChecks
