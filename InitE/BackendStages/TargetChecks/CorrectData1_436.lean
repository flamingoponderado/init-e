import InitE.BackendStages.TargetChecks.CorrectData0_436
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
def localLabels1_436 : List (Nat × Nat) :=
[(6, 298456), (5, 298444), (4, 298416), (3, 298408), (2, 298396), (1, 298352)]
def Reencode1_436 : LabSem.LabSectionHOL 64 :=
Reencode0_436
end InitE.BackendStages.TargetChecks.Correct
