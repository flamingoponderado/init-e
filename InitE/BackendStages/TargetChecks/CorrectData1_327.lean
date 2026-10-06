import InitE.BackendStages.TargetChecks.CorrectData0_327
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
def localLabels1_327 : List (Nat × Nat) :=
[(15, 224968), (14, 224948), (5, 224932), (4, 224904), (13, 224844), (12, 224808), (10, 224804), (3, 224792),
  (2, 224768), (9, 224708), (11, 224668), (8, 224640), (1, 224608), (7, 224604)]
def Reencode1_327 : LabSem.LabSectionHOL 64 :=
Reencode0_327
end InitE.BackendStages.TargetChecks.Correct
