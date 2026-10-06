import InitE.BackendStages.TargetChecks.Data0_453
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
def localLabels1_453 : List (Nat × Nat) :=
[(14, 309736), (7, 309716), (13, 309696), (12, 309632), (11, 309604), (9, 309600), (3, 309580), (2, 309548),
  (8, 309488), (10, 309392), (6, 309332), (1, 309300), (5, 309296)]
def Reencode1_453 : LabSem.LabSectionHOL 64 :=
Reencode0_453
end InitE.BackendStages.TargetChecks
