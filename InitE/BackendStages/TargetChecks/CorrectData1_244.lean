import InitE.BackendStages.TargetChecks.CorrectData0_244
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
def localLabels1_244 : List (Nat × Nat) :=
[(12, 136216), (11, 136200), (5, 136188), (4, 136164), (10, 136104), (9, 136072), (3, 136056), (2, 136028), (8, 135968),
  (1, 135924), (7, 135920)]
def Reencode1_244 : LabSem.LabSectionHOL 64 :=
Reencode0_244
end InitE.BackendStages.TargetChecks.Correct
