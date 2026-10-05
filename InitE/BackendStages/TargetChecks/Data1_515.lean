import InitE.BackendStages.TargetChecks.Data0_515
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
def localLabels1_515 : List (Nat × Nat) :=
[(24, 363536), (23, 363520), (11, 363508), (10, 363484), (22, 363424), (21, 363392), (9, 363384), (8, 363364),
  (20, 363304), (19, 363272), (7, 363264), (6, 363240), (18, 363180), (17, 363148), (5, 363124), (4, 363088),
  (16, 363028), (15, 362980), (3, 362972), (2, 362948), (14, 362888), (1, 362856), (13, 362852)]
def Reencode1_515 : LabSem.LabSectionHOL 64 :=
Reencode0_515
end InitE.BackendStages.TargetChecks
