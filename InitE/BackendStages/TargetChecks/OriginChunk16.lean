import InitE.BackendStages.Encoded570
import InitE.BackendStages.TargetChecks.Initial570
import InitE.BackendStages.Encoded571
import InitE.BackendStages.TargetChecks.Initial571
import InitE.BackendStages.Encoded572
import InitE.BackendStages.TargetChecks.Initial572
import InitE.BackendStages.Encoded573
import InitE.BackendStages.TargetChecks.Initial573
import InitE.BackendStages.Encoded574
import InitE.BackendStages.TargetChecks.Initial574
import InitE.BackendStages.Encoded575
import InitE.BackendStages.TargetChecks.Initial575
import InitE.BackendStages.Encoded576
import InitE.BackendStages.TargetChecks.Initial576
import InitE.BackendStages.Encoded577
import InitE.BackendStages.TargetChecks.Initial577
import InitE.BackendStages.Encoded578
import InitE.BackendStages.TargetChecks.Initial578
import InitE.BackendStages.Encoded579
import InitE.BackendStages.TargetChecks.Initial579
import InitE.BackendStages.Encoded580
import InitE.BackendStages.TargetChecks.Initial580
import InitE.BackendStages.Encoded581
import InitE.BackendStages.TargetChecks.Initial581
import InitE.BackendStages.Encoded582
import InitE.BackendStages.TargetChecks.Initial582
import InitE.BackendStages.Encoded583
import InitE.BackendStages.TargetChecks.Initial583
import InitE.BackendStages.Encoded584
import InitE.BackendStages.TargetChecks.Initial584
import InitE.BackendStages.Encoded585
import InitE.BackendStages.TargetChecks.Initial585
import InitE.BackendStages.Encoded586
import InitE.BackendStages.TargetChecks.Initial586
import InitE.BackendStages.Encoded587
import InitE.BackendStages.TargetChecks.Initial587
import InitE.BackendStages.Encoded588
import InitE.BackendStages.TargetChecks.Initial588
import InitE.BackendStages.Encoded589
import InitE.BackendStages.TargetChecks.Initial589
import InitE.BackendStages.Encoded590
import InitE.BackendStages.TargetChecks.Initial590
import InitE.BackendStages.Encoded591
import InitE.BackendStages.TargetChecks.Initial591
import InitE.BackendStages.Encoded592
import InitE.BackendStages.TargetChecks.Initial592
import InitE.BackendStages.Encoded593
import InitE.BackendStages.TargetChecks.Initial593
import InitE.BackendStages.Encoded594
import InitE.BackendStages.TargetChecks.Initial594
import InitE.BackendStages.Encoded595
import InitE.BackendStages.TargetChecks.Initial595
import InitE.BackendStages.Encoded596
import InitE.BackendStages.TargetChecks.Initial596
import InitE.BackendStages.Encoded597
import InitE.BackendStages.TargetChecks.Initial597
import InitE.BackendStages.Encoded598
import InitE.BackendStages.TargetChecks.Initial598
import InitE.BackendStages.Encoded599
import InitE.BackendStages.TargetChecks.Initial599
import InitE.BackendStages.Encoded600
import InitE.BackendStages.TargetChecks.Initial600
import InitE.BackendStages.Encoded601
import InitE.BackendStages.TargetChecks.Initial601
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk16
def input : LabSem.LabProgHOL 64 := [Encoded570, Encoded571, Encoded572, Encoded573, Encoded574, Encoded575, Encoded576, Encoded577, Encoded578, Encoded579, Encoded580, Encoded581, Encoded582, Encoded583, Encoded584, Encoded585, Encoded586, Encoded587, Encoded588, Encoded589, Encoded590, Encoded591, Encoded592, Encoded593, Encoded594, Encoded595, Encoded596, Encoded597, Encoded598, Encoded599, Encoded600, Encoded601]
def output : LabSem.LabProgHOL 64 := [Initial570, Initial571, Initial572, Initial573, Initial574, Initial575, Initial576, Initial577, Initial578, Initial579, Initial580, Initial581, Initial582, Initial583, Initial584, Initial585, Initial586, Initial587, Initial588, Initial589, Initial590, Initial591, Initial592, Initial593, Initial594, Initial595, Initial596, Initial597, Initial598, Initial599, Initial600, Initial601]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk16
end InitE.BackendStages.TargetChecks
