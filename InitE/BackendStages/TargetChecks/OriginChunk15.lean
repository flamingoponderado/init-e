import InitE.BackendStages.Encoded538
import InitE.BackendStages.TargetChecks.Initial538
import InitE.BackendStages.Encoded539
import InitE.BackendStages.TargetChecks.Initial539
import InitE.BackendStages.Encoded540
import InitE.BackendStages.TargetChecks.Initial540
import InitE.BackendStages.Encoded541
import InitE.BackendStages.TargetChecks.Initial541
import InitE.BackendStages.Encoded542
import InitE.BackendStages.TargetChecks.Initial542
import InitE.BackendStages.Encoded543
import InitE.BackendStages.TargetChecks.Initial543
import InitE.BackendStages.Encoded544
import InitE.BackendStages.TargetChecks.Initial544
import InitE.BackendStages.Encoded545
import InitE.BackendStages.TargetChecks.Initial545
import InitE.BackendStages.Encoded546
import InitE.BackendStages.TargetChecks.Initial546
import InitE.BackendStages.Encoded547
import InitE.BackendStages.TargetChecks.Initial547
import InitE.BackendStages.Encoded548
import InitE.BackendStages.TargetChecks.Initial548
import InitE.BackendStages.Encoded549
import InitE.BackendStages.TargetChecks.Initial549
import InitE.BackendStages.Encoded550
import InitE.BackendStages.TargetChecks.Initial550
import InitE.BackendStages.Encoded551
import InitE.BackendStages.TargetChecks.Initial551
import InitE.BackendStages.Encoded552
import InitE.BackendStages.TargetChecks.Initial552
import InitE.BackendStages.Encoded553
import InitE.BackendStages.TargetChecks.Initial553
import InitE.BackendStages.Encoded554
import InitE.BackendStages.TargetChecks.Initial554
import InitE.BackendStages.Encoded555
import InitE.BackendStages.TargetChecks.Initial555
import InitE.BackendStages.Encoded556
import InitE.BackendStages.TargetChecks.Initial556
import InitE.BackendStages.Encoded557
import InitE.BackendStages.TargetChecks.Initial557
import InitE.BackendStages.Encoded558
import InitE.BackendStages.TargetChecks.Initial558
import InitE.BackendStages.Encoded559
import InitE.BackendStages.TargetChecks.Initial559
import InitE.BackendStages.Encoded560
import InitE.BackendStages.TargetChecks.Initial560
import InitE.BackendStages.Encoded561
import InitE.BackendStages.TargetChecks.Initial561
import InitE.BackendStages.Encoded562
import InitE.BackendStages.TargetChecks.Initial562
import InitE.BackendStages.Encoded563
import InitE.BackendStages.TargetChecks.Initial563
import InitE.BackendStages.Encoded564
import InitE.BackendStages.TargetChecks.Initial564
import InitE.BackendStages.Encoded565
import InitE.BackendStages.TargetChecks.Initial565
import InitE.BackendStages.Encoded566
import InitE.BackendStages.TargetChecks.Initial566
import InitE.BackendStages.Encoded567
import InitE.BackendStages.TargetChecks.Initial567
import InitE.BackendStages.Encoded568
import InitE.BackendStages.TargetChecks.Initial568
import InitE.BackendStages.Encoded569
import InitE.BackendStages.TargetChecks.Initial569
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk15
def input : LabSem.LabProgHOL 64 := [Encoded538, Encoded539, Encoded540, Encoded541, Encoded542, Encoded543, Encoded544, Encoded545, Encoded546, Encoded547, Encoded548, Encoded549, Encoded550, Encoded551, Encoded552, Encoded553, Encoded554, Encoded555, Encoded556, Encoded557, Encoded558, Encoded559, Encoded560, Encoded561, Encoded562, Encoded563, Encoded564, Encoded565, Encoded566, Encoded567, Encoded568, Encoded569]
def output : LabSem.LabProgHOL 64 := [Initial538, Initial539, Initial540, Initial541, Initial542, Initial543, Initial544, Initial545, Initial546, Initial547, Initial548, Initial549, Initial550, Initial551, Initial552, Initial553, Initial554, Initial555, Initial556, Initial557, Initial558, Initial559, Initial560, Initial561, Initial562, Initial563, Initial564, Initial565, Initial566, Initial567, Initial568, Initial569]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk15
end InitE.BackendStages.TargetChecks
