import InitE.BackendStages.TargetChecks.Data0_187
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
def localLabels1_187 : List (Nat × Nat) :=
[(9, 61580), (8, 61564), (7, 61540), (3, 61524), (2, 61492), (6, 61432), (1, 61396), (5, 61392)]
def Reencode1_187 : LabSem.LabSectionHOL 64 :=
Reencode0_187
end InitE.BackendStages.TargetChecks
