import InitE.BackendStages.Encoded698
import InitE.BackendStages.TargetChecks.Initial698
import InitE.BackendStages.Encoded699
import InitE.BackendStages.TargetChecks.Initial699
import InitE.BackendStages.Encoded700
import InitE.BackendStages.TargetChecks.Initial700
import InitE.BackendStages.Encoded701
import InitE.BackendStages.TargetChecks.Initial701
import InitE.BackendStages.Encoded702
import InitE.BackendStages.TargetChecks.Initial702
import InitE.BackendStages.Encoded703
import InitE.BackendStages.TargetChecks.Initial703
import InitE.BackendStages.Encoded704
import InitE.BackendStages.TargetChecks.Initial704
import InitE.BackendStages.Encoded705
import InitE.BackendStages.TargetChecks.Initial705
import InitE.BackendStages.Encoded706
import InitE.BackendStages.TargetChecks.Initial706
import InitE.BackendStages.Encoded707
import InitE.BackendStages.TargetChecks.Initial707
import InitE.BackendStages.Encoded708
import InitE.BackendStages.TargetChecks.Initial708
import InitE.BackendStages.Encoded709
import InitE.BackendStages.TargetChecks.Initial709
import InitE.BackendStages.Encoded710
import InitE.BackendStages.TargetChecks.Initial710
import InitE.BackendStages.Encoded711
import InitE.BackendStages.TargetChecks.Initial711
import InitE.BackendStages.Encoded712
import InitE.BackendStages.TargetChecks.Initial712
import InitE.BackendStages.Encoded713
import InitE.BackendStages.TargetChecks.Initial713
import InitE.BackendStages.Encoded714
import InitE.BackendStages.TargetChecks.Initial714
import InitE.BackendStages.Encoded715
import InitE.BackendStages.TargetChecks.Initial715
import InitE.BackendStages.Encoded716
import InitE.BackendStages.TargetChecks.Initial716
import InitE.BackendStages.Encoded717
import InitE.BackendStages.TargetChecks.Initial717
import InitE.BackendStages.Encoded718
import InitE.BackendStages.TargetChecks.Initial718
import InitE.BackendStages.Encoded719
import InitE.BackendStages.TargetChecks.Initial719
import InitE.BackendStages.Encoded720
import InitE.BackendStages.TargetChecks.Initial720
import InitE.BackendStages.Encoded721
import InitE.BackendStages.TargetChecks.Initial721
import InitE.BackendStages.Encoded722
import InitE.BackendStages.TargetChecks.Initial722
import InitE.BackendStages.Encoded723
import InitE.BackendStages.TargetChecks.Initial723
import InitE.BackendStages.Encoded724
import InitE.BackendStages.TargetChecks.Initial724
import InitE.BackendStages.Encoded725
import InitE.BackendStages.TargetChecks.Initial725
import InitE.BackendStages.Encoded726
import InitE.BackendStages.TargetChecks.Initial726
import InitE.BackendStages.Encoded727
import InitE.BackendStages.TargetChecks.Initial727
import InitE.BackendStages.Encoded728
import InitE.BackendStages.TargetChecks.Initial728
import InitE.BackendStages.Encoded729
import InitE.BackendStages.TargetChecks.Initial729
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk20
def input : LabSem.LabProgHOL 64 := [Encoded698, Encoded699, Encoded700, Encoded701, Encoded702, Encoded703, Encoded704, Encoded705, Encoded706, Encoded707, Encoded708, Encoded709, Encoded710, Encoded711, Encoded712, Encoded713, Encoded714, Encoded715, Encoded716, Encoded717, Encoded718, Encoded719, Encoded720, Encoded721, Encoded722, Encoded723, Encoded724, Encoded725, Encoded726, Encoded727, Encoded728, Encoded729]
def output : LabSem.LabProgHOL 64 := [Initial698, Initial699, Initial700, Initial701, Initial702, Initial703, Initial704, Initial705, Initial706, Initial707, Initial708, Initial709, Initial710, Initial711, Initial712, Initial713, Initial714, Initial715, Initial716, Initial717, Initial718, Initial719, Initial720, Initial721, Initial722, Initial723, Initial724, Initial725, Initial726, Initial727, Initial728, Initial729]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk20
end InitE.BackendStages.TargetChecks
