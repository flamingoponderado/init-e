import InitE.BackendStages.TargetChecks.CorrectData0_87
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
def localLabels1_87 : List (Nat × Nat) :=
[(12, 10644), (11, 10628), (5, 10616), (4, 10592), (10, 10532), (9, 10496), (3, 10480), (2, 10452), (8, 10392),
  (1, 10352), (7, 10348)]
def Reencode1_87 : LabSem.LabSectionHOL 64 :=
Reencode0_87
end InitE.BackendStages.TargetChecks.Correct
