import InitE.BackendStages.TargetChecks.Data0_489
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
def localLabels1_489 : List (Nat × Nat) :=
[(12, 345168), (11, 345152), (5, 345136), (4, 345108), (10, 345048), (9, 345008), (3, 345000), (2, 344976), (8, 344916),
  (1, 344880), (7, 344876)]
def Reencode1_489 : LabSem.LabSectionHOL 64 :=
Reencode0_489
end InitE.BackendStages.TargetChecks
