import InitE.BackendStages.TargetChecks.CorrectData0_104
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
def localLabels1_104 : List (Nat × Nat) :=
[(9, 13060), (8, 13036), (3, 13020), (2, 12988), (7, 12928), (6, 12880), (1, 12852), (5, 12848)]
def Reencode1_104 : LabSem.LabSectionHOL 64 :=
Reencode0_104
end InitE.BackendStages.TargetChecks.Correct
