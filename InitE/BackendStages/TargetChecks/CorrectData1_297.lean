import InitE.BackendStages.TargetChecks.CorrectData0_297
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
def localLabels1_297 : List (Nat × Nat) :=
[(8, 196456), (7, 196400), (3, 196384), (2, 196352), (6, 196292), (1, 196248), (5, 196244)]
def Reencode1_297 : LabSem.LabSectionHOL 64 :=
Reencode0_297
end InitE.BackendStages.TargetChecks.Correct
