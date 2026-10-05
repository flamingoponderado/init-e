import InitE.BackendStages.TargetChecks.CorrectData0_550
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
def localLabels1_550 : List (Nat × Nat) :=
[(12, 392656), (11, 392640), (5, 392628), (4, 392604), (10, 392544), (9, 392492), (3, 392484), (2, 392460), (8, 392400),
  (1, 392368), (7, 392364)]
def Reencode1_550 : LabSem.LabSectionHOL 64 :=
Reencode0_550
end InitE.BackendStages.TargetChecks.Correct
