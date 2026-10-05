import InitE.BackendStages.TargetChecks.CorrectData0_68
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
def localLabels1_68 : List (Nat × Nat) :=
[(16, 6528), (15, 6492), (13, 6488), (5, 6468), (4, 6436), (12, 6376), (14, 6336), (11, 6284), (9, 6280), (3, 6264),
  (2, 6236), (8, 6176), (10, 6132), (1, 6068), (7, 6064)]
def Reencode1_68 : LabSem.LabSectionHOL 64 :=
Reencode0_68
end InitE.BackendStages.TargetChecks.Correct
