import InitE.BackendStages.Encoded730
import InitE.BackendStages.TargetChecks.Initial730
import InitE.BackendStages.Encoded731
import InitE.BackendStages.TargetChecks.Initial731
import InitE.BackendStages.Encoded732
import InitE.BackendStages.TargetChecks.Initial732
import InitE.BackendStages.Encoded733
import InitE.BackendStages.TargetChecks.Initial733
import InitE.BackendStages.Encoded734
import InitE.BackendStages.TargetChecks.Initial734
import InitE.BackendStages.Encoded735
import InitE.BackendStages.TargetChecks.Initial735
import InitE.BackendStages.Encoded736
import InitE.BackendStages.TargetChecks.Initial736
import InitE.BackendStages.Encoded737
import InitE.BackendStages.TargetChecks.Initial737
import InitE.BackendStages.Encoded738
import InitE.BackendStages.TargetChecks.Initial738
import InitE.BackendStages.Encoded739
import InitE.BackendStages.TargetChecks.Initial739
import InitE.BackendStages.Encoded740
import InitE.BackendStages.TargetChecks.Initial740
import InitE.BackendStages.Encoded741
import InitE.BackendStages.TargetChecks.Initial741
import InitE.BackendStages.Encoded742
import InitE.BackendStages.TargetChecks.Initial742
import InitE.BackendStages.Encoded743
import InitE.BackendStages.TargetChecks.Initial743
import InitE.BackendStages.Encoded744
import InitE.BackendStages.TargetChecks.Initial744
import InitE.BackendStages.Encoded745
import InitE.BackendStages.TargetChecks.Initial745
import InitE.BackendStages.Encoded746
import InitE.BackendStages.TargetChecks.Initial746
import InitE.BackendStages.Encoded747
import InitE.BackendStages.TargetChecks.Initial747
import InitE.BackendStages.Encoded748
import InitE.BackendStages.TargetChecks.Initial748
import InitE.BackendStages.Encoded749
import InitE.BackendStages.TargetChecks.Initial749
import InitE.BackendStages.Encoded750
import InitE.BackendStages.TargetChecks.Initial750
import InitE.BackendStages.Encoded751
import InitE.BackendStages.TargetChecks.Initial751
import InitE.BackendStages.Encoded752
import InitE.BackendStages.TargetChecks.Initial752
import InitE.BackendStages.Encoded753
import InitE.BackendStages.TargetChecks.Initial753
import InitE.BackendStages.Encoded754
import InitE.BackendStages.TargetChecks.Initial754
import InitE.BackendStages.Encoded755
import InitE.BackendStages.TargetChecks.Initial755
import InitE.BackendStages.Encoded756
import InitE.BackendStages.TargetChecks.Initial756
import InitE.BackendStages.Encoded757
import InitE.BackendStages.TargetChecks.Initial757
import InitE.BackendStages.Encoded758
import InitE.BackendStages.TargetChecks.Initial758
import InitE.BackendStages.Encoded759
import InitE.BackendStages.TargetChecks.Initial759
import InitE.BackendStages.Encoded760
import InitE.BackendStages.TargetChecks.Initial760
import InitE.BackendStages.Encoded761
import InitE.BackendStages.TargetChecks.Initial761
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk21
def input : LabSem.LabProgHOL 64 := [Encoded730, Encoded731, Encoded732, Encoded733, Encoded734, Encoded735, Encoded736, Encoded737, Encoded738, Encoded739, Encoded740, Encoded741, Encoded742, Encoded743, Encoded744, Encoded745, Encoded746, Encoded747, Encoded748, Encoded749, Encoded750, Encoded751, Encoded752, Encoded753, Encoded754, Encoded755, Encoded756, Encoded757, Encoded758, Encoded759, Encoded760, Encoded761]
def output : LabSem.LabProgHOL 64 := [Initial730, Initial731, Initial732, Initial733, Initial734, Initial735, Initial736, Initial737, Initial738, Initial739, Initial740, Initial741, Initial742, Initial743, Initial744, Initial745, Initial746, Initial747, Initial748, Initial749, Initial750, Initial751, Initial752, Initial753, Initial754, Initial755, Initial756, Initial757, Initial758, Initial759, Initial760, Initial761]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk21
end InitE.BackendStages.TargetChecks
