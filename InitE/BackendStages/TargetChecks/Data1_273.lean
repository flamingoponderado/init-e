import InitE.BackendStages.TargetChecks.Data0_273
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
def localLabels1_273 : List (Nat × Nat) :=
[(13, 169564), (12, 169548), (5, 169536), (4, 169508), (11, 169448), (10, 169416), (9, 169388), (3, 169380),
  (2, 169356), (8, 169296), (1, 169264), (7, 169260)]
def Reencode1_273 : LabSem.LabSectionHOL 64 :=
Reencode0_273
end InitE.BackendStages.TargetChecks
