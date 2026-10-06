import InitE.BackendStages.TargetChecks.Data0_337
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
def localLabels1_337 : List (Nat × Nat) :=
[(15, 234040), (14, 234020), (12, 234016), (13, 233992), (11, 233976), (9, 233972), (10, 233940), (8, 233924),
  (7, 233896), (3, 233880), (2, 233848), (6, 233788), (1, 233736), (5, 233732)]
def Reencode1_337 : LabSem.LabSectionHOL 64 :=
Reencode0_337
end InitE.BackendStages.TargetChecks
