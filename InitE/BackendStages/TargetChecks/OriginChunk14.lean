import InitE.BackendStages.Encoded506
import InitE.BackendStages.TargetChecks.Initial506
import InitE.BackendStages.Encoded507
import InitE.BackendStages.TargetChecks.Initial507
import InitE.BackendStages.Encoded508
import InitE.BackendStages.TargetChecks.Initial508
import InitE.BackendStages.Encoded509
import InitE.BackendStages.TargetChecks.Initial509
import InitE.BackendStages.Encoded510
import InitE.BackendStages.TargetChecks.Initial510
import InitE.BackendStages.Encoded511
import InitE.BackendStages.TargetChecks.Initial511
import InitE.BackendStages.Encoded512
import InitE.BackendStages.TargetChecks.Initial512
import InitE.BackendStages.Encoded513
import InitE.BackendStages.TargetChecks.Initial513
import InitE.BackendStages.Encoded514
import InitE.BackendStages.TargetChecks.Initial514
import InitE.BackendStages.Encoded515
import InitE.BackendStages.TargetChecks.Initial515
import InitE.BackendStages.Encoded516
import InitE.BackendStages.TargetChecks.Initial516
import InitE.BackendStages.Encoded517
import InitE.BackendStages.TargetChecks.Initial517
import InitE.BackendStages.Encoded518
import InitE.BackendStages.TargetChecks.Initial518
import InitE.BackendStages.Encoded519
import InitE.BackendStages.TargetChecks.Initial519
import InitE.BackendStages.Encoded520
import InitE.BackendStages.TargetChecks.Initial520
import InitE.BackendStages.Encoded521
import InitE.BackendStages.TargetChecks.Initial521
import InitE.BackendStages.Encoded522
import InitE.BackendStages.TargetChecks.Initial522
import InitE.BackendStages.Encoded523
import InitE.BackendStages.TargetChecks.Initial523
import InitE.BackendStages.Encoded524
import InitE.BackendStages.TargetChecks.Initial524
import InitE.BackendStages.Encoded525
import InitE.BackendStages.TargetChecks.Initial525
import InitE.BackendStages.Encoded526
import InitE.BackendStages.TargetChecks.Initial526
import InitE.BackendStages.Encoded527
import InitE.BackendStages.TargetChecks.Initial527
import InitE.BackendStages.Encoded528
import InitE.BackendStages.TargetChecks.Initial528
import InitE.BackendStages.Encoded529
import InitE.BackendStages.TargetChecks.Initial529
import InitE.BackendStages.Encoded530
import InitE.BackendStages.TargetChecks.Initial530
import InitE.BackendStages.Encoded531
import InitE.BackendStages.TargetChecks.Initial531
import InitE.BackendStages.Encoded532
import InitE.BackendStages.TargetChecks.Initial532
import InitE.BackendStages.Encoded533
import InitE.BackendStages.TargetChecks.Initial533
import InitE.BackendStages.Encoded534
import InitE.BackendStages.TargetChecks.Initial534
import InitE.BackendStages.Encoded535
import InitE.BackendStages.TargetChecks.Initial535
import InitE.BackendStages.Encoded536
import InitE.BackendStages.TargetChecks.Initial536
import InitE.BackendStages.Encoded537
import InitE.BackendStages.TargetChecks.Initial537
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk14
def input : LabSem.LabProgHOL 64 := [Encoded506, Encoded507, Encoded508, Encoded509, Encoded510, Encoded511, Encoded512, Encoded513, Encoded514, Encoded515, Encoded516, Encoded517, Encoded518, Encoded519, Encoded520, Encoded521, Encoded522, Encoded523, Encoded524, Encoded525, Encoded526, Encoded527, Encoded528, Encoded529, Encoded530, Encoded531, Encoded532, Encoded533, Encoded534, Encoded535, Encoded536, Encoded537]
def output : LabSem.LabProgHOL 64 := [Initial506, Initial507, Initial508, Initial509, Initial510, Initial511, Initial512, Initial513, Initial514, Initial515, Initial516, Initial517, Initial518, Initial519, Initial520, Initial521, Initial522, Initial523, Initial524, Initial525, Initial526, Initial527, Initial528, Initial529, Initial530, Initial531, Initial532, Initial533, Initial534, Initial535, Initial536, Initial537]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk14
end InitE.BackendStages.TargetChecks
