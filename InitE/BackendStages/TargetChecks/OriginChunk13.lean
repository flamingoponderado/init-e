import InitE.BackendStages.Encoded474
import InitE.BackendStages.TargetChecks.Initial474
import InitE.BackendStages.Encoded475
import InitE.BackendStages.TargetChecks.Initial475
import InitE.BackendStages.Encoded476
import InitE.BackendStages.TargetChecks.Initial476
import InitE.BackendStages.Encoded477
import InitE.BackendStages.TargetChecks.Initial477
import InitE.BackendStages.Encoded478
import InitE.BackendStages.TargetChecks.Initial478
import InitE.BackendStages.Encoded479
import InitE.BackendStages.TargetChecks.Initial479
import InitE.BackendStages.Encoded480
import InitE.BackendStages.TargetChecks.Initial480
import InitE.BackendStages.Encoded481
import InitE.BackendStages.TargetChecks.Initial481
import InitE.BackendStages.Encoded482
import InitE.BackendStages.TargetChecks.Initial482
import InitE.BackendStages.Encoded483
import InitE.BackendStages.TargetChecks.Initial483
import InitE.BackendStages.Encoded484
import InitE.BackendStages.TargetChecks.Initial484
import InitE.BackendStages.Encoded485
import InitE.BackendStages.TargetChecks.Initial485
import InitE.BackendStages.Encoded486
import InitE.BackendStages.TargetChecks.Initial486
import InitE.BackendStages.Encoded487
import InitE.BackendStages.TargetChecks.Initial487
import InitE.BackendStages.Encoded488
import InitE.BackendStages.TargetChecks.Initial488
import InitE.BackendStages.Encoded489
import InitE.BackendStages.TargetChecks.Initial489
import InitE.BackendStages.Encoded490
import InitE.BackendStages.TargetChecks.Initial490
import InitE.BackendStages.Encoded491
import InitE.BackendStages.TargetChecks.Initial491
import InitE.BackendStages.Encoded492
import InitE.BackendStages.TargetChecks.Initial492
import InitE.BackendStages.Encoded493
import InitE.BackendStages.TargetChecks.Initial493
import InitE.BackendStages.Encoded494
import InitE.BackendStages.TargetChecks.Initial494
import InitE.BackendStages.Encoded495
import InitE.BackendStages.TargetChecks.Initial495
import InitE.BackendStages.Encoded496
import InitE.BackendStages.TargetChecks.Initial496
import InitE.BackendStages.Encoded497
import InitE.BackendStages.TargetChecks.Initial497
import InitE.BackendStages.Encoded498
import InitE.BackendStages.TargetChecks.Initial498
import InitE.BackendStages.Encoded499
import InitE.BackendStages.TargetChecks.Initial499
import InitE.BackendStages.Encoded500
import InitE.BackendStages.TargetChecks.Initial500
import InitE.BackendStages.Encoded501
import InitE.BackendStages.TargetChecks.Initial501
import InitE.BackendStages.Encoded502
import InitE.BackendStages.TargetChecks.Initial502
import InitE.BackendStages.Encoded503
import InitE.BackendStages.TargetChecks.Initial503
import InitE.BackendStages.Encoded504
import InitE.BackendStages.TargetChecks.Initial504
import InitE.BackendStages.Encoded505
import InitE.BackendStages.TargetChecks.Initial505
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk13
def input : LabSem.LabProgHOL 64 := [Encoded474, Encoded475, Encoded476, Encoded477, Encoded478, Encoded479, Encoded480, Encoded481, Encoded482, Encoded483, Encoded484, Encoded485, Encoded486, Encoded487, Encoded488, Encoded489, Encoded490, Encoded491, Encoded492, Encoded493, Encoded494, Encoded495, Encoded496, Encoded497, Encoded498, Encoded499, Encoded500, Encoded501, Encoded502, Encoded503, Encoded504, Encoded505]
def output : LabSem.LabProgHOL 64 := [Initial474, Initial475, Initial476, Initial477, Initial478, Initial479, Initial480, Initial481, Initial482, Initial483, Initial484, Initial485, Initial486, Initial487, Initial488, Initial489, Initial490, Initial491, Initial492, Initial493, Initial494, Initial495, Initial496, Initial497, Initial498, Initial499, Initial500, Initial501, Initial502, Initial503, Initial504, Initial505]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk13
end InitE.BackendStages.TargetChecks
