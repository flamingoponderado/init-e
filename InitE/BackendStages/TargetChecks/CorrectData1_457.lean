import InitE.BackendStages.TargetChecks.CorrectData0_457
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
def localLabels1_457 : List (Nat × Nat) :=
[(12, 315024), (11, 315008), (5, 314996), (4, 314972), (10, 314912), (9, 314884), (3, 314876), (2, 314856), (8, 314796),
  (1, 314764), (7, 314760)]
def Reencode1_457 : LabSem.LabSectionHOL 64 :=
Reencode0_457
end InitE.BackendStages.TargetChecks.Correct
