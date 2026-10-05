import InitE.BackendStages.TargetChecks.CorrectData0_274
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
def localLabels1_274 : List (Nat × Nat) :=
[(10, 169816), (9, 169800), (8, 169776), (7, 169748), (3, 169732), (2, 169700), (6, 169640), (1, 169588), (5, 169584)]
def Reencode1_274 : LabSem.LabSectionHOL 64 :=
Reencode0_274
end InitE.BackendStages.TargetChecks.Correct
