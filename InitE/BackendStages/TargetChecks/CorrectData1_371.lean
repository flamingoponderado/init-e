import InitE.BackendStages.TargetChecks.CorrectData0_371
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
def localLabels1_371 : List (Nat × Nat) :=
[(8, 257108), (7, 257092), (3, 257080), (2, 257056), (6, 256996), (1, 256948), (5, 256944)]
def Reencode1_371 : LabSem.LabSectionHOL 64 :=
Reencode0_371
end InitE.BackendStages.TargetChecks.Correct
