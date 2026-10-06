import InitE.BackendStages.Encoded602
import InitE.BackendStages.TargetChecks.Initial602
import InitE.BackendStages.Encoded603
import InitE.BackendStages.TargetChecks.Initial603
import InitE.BackendStages.Encoded604
import InitE.BackendStages.TargetChecks.Initial604
import InitE.BackendStages.Encoded605
import InitE.BackendStages.TargetChecks.Initial605
import InitE.BackendStages.Encoded606
import InitE.BackendStages.TargetChecks.Initial606
import InitE.BackendStages.Encoded607
import InitE.BackendStages.TargetChecks.Initial607
import InitE.BackendStages.Encoded608
import InitE.BackendStages.TargetChecks.Initial608
import InitE.BackendStages.Encoded609
import InitE.BackendStages.TargetChecks.Initial609
import InitE.BackendStages.Encoded610
import InitE.BackendStages.TargetChecks.Initial610
import InitE.BackendStages.Encoded611
import InitE.BackendStages.TargetChecks.Initial611
import InitE.BackendStages.Encoded612
import InitE.BackendStages.TargetChecks.Initial612
import InitE.BackendStages.Encoded613
import InitE.BackendStages.TargetChecks.Initial613
import InitE.BackendStages.Encoded614
import InitE.BackendStages.TargetChecks.Initial614
import InitE.BackendStages.Encoded615
import InitE.BackendStages.TargetChecks.Initial615
import InitE.BackendStages.Encoded616
import InitE.BackendStages.TargetChecks.Initial616
import InitE.BackendStages.Encoded617
import InitE.BackendStages.TargetChecks.Initial617
import InitE.BackendStages.Encoded618
import InitE.BackendStages.TargetChecks.Initial618
import InitE.BackendStages.Encoded619
import InitE.BackendStages.TargetChecks.Initial619
import InitE.BackendStages.Encoded620
import InitE.BackendStages.TargetChecks.Initial620
import InitE.BackendStages.Encoded621
import InitE.BackendStages.TargetChecks.Initial621
import InitE.BackendStages.Encoded622
import InitE.BackendStages.TargetChecks.Initial622
import InitE.BackendStages.Encoded623
import InitE.BackendStages.TargetChecks.Initial623
import InitE.BackendStages.Encoded624
import InitE.BackendStages.TargetChecks.Initial624
import InitE.BackendStages.Encoded625
import InitE.BackendStages.TargetChecks.Initial625
import InitE.BackendStages.Encoded626
import InitE.BackendStages.TargetChecks.Initial626
import InitE.BackendStages.Encoded627
import InitE.BackendStages.TargetChecks.Initial627
import InitE.BackendStages.Encoded628
import InitE.BackendStages.TargetChecks.Initial628
import InitE.BackendStages.Encoded629
import InitE.BackendStages.TargetChecks.Initial629
import InitE.BackendStages.Encoded630
import InitE.BackendStages.TargetChecks.Initial630
import InitE.BackendStages.Encoded631
import InitE.BackendStages.TargetChecks.Initial631
import InitE.BackendStages.Encoded632
import InitE.BackendStages.TargetChecks.Initial632
import InitE.BackendStages.Encoded633
import InitE.BackendStages.TargetChecks.Initial633
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk17
def input : LabSem.LabProgHOL 64 := [Encoded602, Encoded603, Encoded604, Encoded605, Encoded606, Encoded607, Encoded608, Encoded609, Encoded610, Encoded611, Encoded612, Encoded613, Encoded614, Encoded615, Encoded616, Encoded617, Encoded618, Encoded619, Encoded620, Encoded621, Encoded622, Encoded623, Encoded624, Encoded625, Encoded626, Encoded627, Encoded628, Encoded629, Encoded630, Encoded631, Encoded632, Encoded633]
def output : LabSem.LabProgHOL 64 := [Initial602, Initial603, Initial604, Initial605, Initial606, Initial607, Initial608, Initial609, Initial610, Initial611, Initial612, Initial613, Initial614, Initial615, Initial616, Initial617, Initial618, Initial619, Initial620, Initial621, Initial622, Initial623, Initial624, Initial625, Initial626, Initial627, Initial628, Initial629, Initial630, Initial631, Initial632, Initial633]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk17
end InitE.BackendStages.TargetChecks
