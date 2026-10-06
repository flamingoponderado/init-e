import InitE.BackendStages.TargetChecks.Data0_407
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
def localLabels1_407 : List (Nat × Nat) :=
[(14, 280028), (13, 280012), (11, 280008), (5, 279996), (4, 279968), (10, 279908), (12, 279880), (9, 279860),
  (3, 279852), (2, 279828), (8, 279768), (1, 279736), (7, 279732)]
def Reencode1_407 : LabSem.LabSectionHOL 64 :=
Reencode0_407
end InitE.BackendStages.TargetChecks
