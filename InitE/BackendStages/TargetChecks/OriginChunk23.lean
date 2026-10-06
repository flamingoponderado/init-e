import InitE.BackendStages.Encoded794
import InitE.BackendStages.TargetChecks.Initial794
import InitE.BackendStages.Encoded795
import InitE.BackendStages.TargetChecks.Initial795
import InitE.BackendStages.Encoded796
import InitE.BackendStages.TargetChecks.Initial796
import InitE.BackendStages.Encoded797
import InitE.BackendStages.TargetChecks.Initial797
import InitE.BackendStages.Encoded798
import InitE.BackendStages.TargetChecks.Initial798
import InitE.BackendStages.Encoded799
import InitE.BackendStages.TargetChecks.Initial799
import InitE.BackendStages.Encoded800
import InitE.BackendStages.TargetChecks.Initial800
import InitE.BackendStages.Encoded801
import InitE.BackendStages.TargetChecks.Initial801
import InitE.BackendStages.Encoded802
import InitE.BackendStages.TargetChecks.Initial802
import InitE.BackendStages.Encoded803
import InitE.BackendStages.TargetChecks.Initial803
import InitE.BackendStages.Encoded804
import InitE.BackendStages.TargetChecks.Initial804
import InitE.BackendStages.Encoded805
import InitE.BackendStages.TargetChecks.Initial805
import InitE.BackendStages.Encoded806
import InitE.BackendStages.TargetChecks.Initial806
import InitE.BackendStages.Encoded807
import InitE.BackendStages.TargetChecks.Initial807
import InitE.BackendStages.Encoded808
import InitE.BackendStages.TargetChecks.Initial808
import InitE.BackendStages.Encoded809
import InitE.BackendStages.TargetChecks.Initial809
import InitE.BackendStages.Encoded810
import InitE.BackendStages.TargetChecks.Initial810
import InitE.BackendStages.Encoded811
import InitE.BackendStages.TargetChecks.Initial811
import InitE.BackendStages.Encoded812
import InitE.BackendStages.TargetChecks.Initial812
import InitE.BackendStages.Encoded813
import InitE.BackendStages.TargetChecks.Initial813
import InitE.BackendStages.Encoded814
import InitE.BackendStages.TargetChecks.Initial814
import InitE.BackendStages.Encoded815
import InitE.BackendStages.TargetChecks.Initial815
import InitE.BackendStages.Encoded816
import InitE.BackendStages.TargetChecks.Initial816
import InitE.BackendStages.Encoded817
import InitE.BackendStages.TargetChecks.Initial817
import InitE.BackendStages.Encoded818
import InitE.BackendStages.TargetChecks.Initial818
import InitE.BackendStages.Encoded819
import InitE.BackendStages.TargetChecks.Initial819
import InitE.BackendStages.Encoded820
import InitE.BackendStages.TargetChecks.Initial820
import InitE.BackendStages.Encoded821
import InitE.BackendStages.TargetChecks.Initial821
import InitE.BackendStages.Encoded822
import InitE.BackendStages.TargetChecks.Initial822
import InitE.BackendStages.Encoded823
import InitE.BackendStages.TargetChecks.Initial823
import InitE.BackendStages.Encoded824
import InitE.BackendStages.TargetChecks.Initial824
import InitE.BackendStages.Encoded825
import InitE.BackendStages.TargetChecks.Initial825
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk23
def input : LabSem.LabProgHOL 64 := [Encoded794, Encoded795, Encoded796, Encoded797, Encoded798, Encoded799, Encoded800, Encoded801, Encoded802, Encoded803, Encoded804, Encoded805, Encoded806, Encoded807, Encoded808, Encoded809, Encoded810, Encoded811, Encoded812, Encoded813, Encoded814, Encoded815, Encoded816, Encoded817, Encoded818, Encoded819, Encoded820, Encoded821, Encoded822, Encoded823, Encoded824, Encoded825]
def output : LabSem.LabProgHOL 64 := [Initial794, Initial795, Initial796, Initial797, Initial798, Initial799, Initial800, Initial801, Initial802, Initial803, Initial804, Initial805, Initial806, Initial807, Initial808, Initial809, Initial810, Initial811, Initial812, Initial813, Initial814, Initial815, Initial816, Initial817, Initial818, Initial819, Initial820, Initial821, Initial822, Initial823, Initial824, Initial825]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk23
end InitE.BackendStages.TargetChecks
