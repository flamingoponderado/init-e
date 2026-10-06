import InitE.BackendStages.TargetChecks.Data0_439
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
def localLabels1_439 : List (Nat × Nat) :=
[(14, 299728), (13, 299684), (11, 299664), (5, 299632), (4, 299588), (10, 299528), (9, 299464), (3, 299444),
  (2, 299408), (8, 299348), (12, 299276), (1, 299248), (7, 299244)]
def Reencode1_439 : LabSem.LabSectionHOL 64 :=
Reencode0_439
end InitE.BackendStages.TargetChecks
