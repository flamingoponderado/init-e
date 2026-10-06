import InitE.BackendStages.TargetChecks.Data0_89
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
def localLabels1_89 : List (Nat × Nat) :=
[(17, 11208), (16, 11192), (7, 11180), (6, 11156), (15, 11096), (14, 11064), (5, 11048), (4, 11020), (13, 10960),
  (12, 10908), (11, 10888), (3, 10872), (2, 10840), (10, 10780), (1, 10724), (9, 10720)]
def Reencode1_89 : LabSem.LabSectionHOL 64 :=
Reencode0_89
end InitE.BackendStages.TargetChecks
