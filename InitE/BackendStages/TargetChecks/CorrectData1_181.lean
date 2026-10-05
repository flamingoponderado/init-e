import InitE.BackendStages.TargetChecks.CorrectData0_181
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
def localLabels1_181 : List (Nat × Nat) :=
[(9, 55340), (8, 55324), (3, 55312), (2, 55284), (7, 55224), (6, 55188), (1, 55160), (5, 55156)]
def Reencode1_181 : LabSem.LabSectionHOL 64 :=
Reencode0_181
end InitE.BackendStages.TargetChecks.Correct
