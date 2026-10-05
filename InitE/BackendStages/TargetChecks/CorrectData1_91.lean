import InitE.BackendStages.TargetChecks.CorrectData0_91
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
def localLabels1_91 : List (Nat × Nat) :=
[(5, 11564), (3, 11552), (4, 11540), (2, 11484), (1, 11476)]
def Reencode1_91 : LabSem.LabSectionHOL 64 :=
Reencode0_91
end InitE.BackendStages.TargetChecks.Correct
