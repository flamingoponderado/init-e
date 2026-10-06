import InitE.BackendStages.Encoded442
import InitE.BackendStages.TargetChecks.Initial442
import InitE.BackendStages.Encoded443
import InitE.BackendStages.TargetChecks.Initial443
import InitE.BackendStages.Encoded444
import InitE.BackendStages.TargetChecks.Initial444
import InitE.BackendStages.Encoded445
import InitE.BackendStages.TargetChecks.Initial445
import InitE.BackendStages.Encoded446
import InitE.BackendStages.TargetChecks.Initial446
import InitE.BackendStages.Encoded447
import InitE.BackendStages.TargetChecks.Initial447
import InitE.BackendStages.Encoded448
import InitE.BackendStages.TargetChecks.Initial448
import InitE.BackendStages.Encoded449
import InitE.BackendStages.TargetChecks.Initial449
import InitE.BackendStages.Encoded450
import InitE.BackendStages.TargetChecks.Initial450
import InitE.BackendStages.Encoded451
import InitE.BackendStages.TargetChecks.Initial451
import InitE.BackendStages.Encoded452
import InitE.BackendStages.TargetChecks.Initial452
import InitE.BackendStages.Encoded453
import InitE.BackendStages.TargetChecks.Initial453
import InitE.BackendStages.Encoded454
import InitE.BackendStages.TargetChecks.Initial454
import InitE.BackendStages.Encoded455
import InitE.BackendStages.TargetChecks.Initial455
import InitE.BackendStages.Encoded456
import InitE.BackendStages.TargetChecks.Initial456
import InitE.BackendStages.Encoded457
import InitE.BackendStages.TargetChecks.Initial457
import InitE.BackendStages.Encoded458
import InitE.BackendStages.TargetChecks.Initial458
import InitE.BackendStages.Encoded459
import InitE.BackendStages.TargetChecks.Initial459
import InitE.BackendStages.Encoded460
import InitE.BackendStages.TargetChecks.Initial460
import InitE.BackendStages.Encoded461
import InitE.BackendStages.TargetChecks.Initial461
import InitE.BackendStages.Encoded462
import InitE.BackendStages.TargetChecks.Initial462
import InitE.BackendStages.Encoded463
import InitE.BackendStages.TargetChecks.Initial463
import InitE.BackendStages.Encoded464
import InitE.BackendStages.TargetChecks.Initial464
import InitE.BackendStages.Encoded465
import InitE.BackendStages.TargetChecks.Initial465
import InitE.BackendStages.Encoded466
import InitE.BackendStages.TargetChecks.Initial466
import InitE.BackendStages.Encoded467
import InitE.BackendStages.TargetChecks.Initial467
import InitE.BackendStages.Encoded468
import InitE.BackendStages.TargetChecks.Initial468
import InitE.BackendStages.Encoded469
import InitE.BackendStages.TargetChecks.Initial469
import InitE.BackendStages.Encoded470
import InitE.BackendStages.TargetChecks.Initial470
import InitE.BackendStages.Encoded471
import InitE.BackendStages.TargetChecks.Initial471
import InitE.BackendStages.Encoded472
import InitE.BackendStages.TargetChecks.Initial472
import InitE.BackendStages.Encoded473
import InitE.BackendStages.TargetChecks.Initial473
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk12
def input : LabSem.LabProgHOL 64 := [Encoded442, Encoded443, Encoded444, Encoded445, Encoded446, Encoded447, Encoded448, Encoded449, Encoded450, Encoded451, Encoded452, Encoded453, Encoded454, Encoded455, Encoded456, Encoded457, Encoded458, Encoded459, Encoded460, Encoded461, Encoded462, Encoded463, Encoded464, Encoded465, Encoded466, Encoded467, Encoded468, Encoded469, Encoded470, Encoded471, Encoded472, Encoded473]
def output : LabSem.LabProgHOL 64 := [Initial442, Initial443, Initial444, Initial445, Initial446, Initial447, Initial448, Initial449, Initial450, Initial451, Initial452, Initial453, Initial454, Initial455, Initial456, Initial457, Initial458, Initial459, Initial460, Initial461, Initial462, Initial463, Initial464, Initial465, Initial466, Initial467, Initial468, Initial469, Initial470, Initial471, Initial472, Initial473]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk12
end InitE.BackendStages.TargetChecks
