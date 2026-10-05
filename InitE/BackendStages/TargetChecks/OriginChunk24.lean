import InitE.BackendStages.Encoded826
import InitE.BackendStages.TargetChecks.Initial826
import InitE.BackendStages.Encoded827
import InitE.BackendStages.TargetChecks.Initial827
import InitE.BackendStages.Encoded828
import InitE.BackendStages.TargetChecks.Initial828
import InitE.BackendStages.Encoded829
import InitE.BackendStages.TargetChecks.Initial829
import InitE.BackendStages.Encoded830
import InitE.BackendStages.TargetChecks.Initial830
import InitE.BackendStages.Encoded831
import InitE.BackendStages.TargetChecks.Initial831
import InitE.BackendStages.Encoded832
import InitE.BackendStages.TargetChecks.Initial832
import InitE.BackendStages.Encoded833
import InitE.BackendStages.TargetChecks.Initial833
import InitE.BackendStages.Encoded834
import InitE.BackendStages.TargetChecks.Initial834
import InitE.BackendStages.Encoded835
import InitE.BackendStages.TargetChecks.Initial835
import InitE.BackendStages.Encoded836
import InitE.BackendStages.TargetChecks.Initial836
import InitE.BackendStages.Encoded837
import InitE.BackendStages.TargetChecks.Initial837
import InitE.BackendStages.Encoded838
import InitE.BackendStages.TargetChecks.Initial838
import InitE.BackendStages.Encoded839
import InitE.BackendStages.TargetChecks.Initial839
import InitE.BackendStages.Encoded840
import InitE.BackendStages.TargetChecks.Initial840
import InitE.BackendStages.Encoded841
import InitE.BackendStages.TargetChecks.Initial841
import InitE.BackendStages.Encoded842
import InitE.BackendStages.TargetChecks.Initial842
import InitE.BackendStages.Encoded843
import InitE.BackendStages.TargetChecks.Initial843
import InitE.BackendStages.Encoded844
import InitE.BackendStages.TargetChecks.Initial844
import InitE.BackendStages.Encoded845
import InitE.BackendStages.TargetChecks.Initial845
import InitE.BackendStages.Encoded846
import InitE.BackendStages.TargetChecks.Initial846
import InitE.BackendStages.Encoded847
import InitE.BackendStages.TargetChecks.Initial847
import InitE.BackendStages.Encoded848
import InitE.BackendStages.TargetChecks.Initial848
import InitE.BackendStages.Encoded849
import InitE.BackendStages.TargetChecks.Initial849
import InitE.BackendStages.Encoded850
import InitE.BackendStages.TargetChecks.Initial850
import InitE.BackendStages.Encoded851
import InitE.BackendStages.TargetChecks.Initial851
import InitE.BackendStages.Encoded852
import InitE.BackendStages.TargetChecks.Initial852
import InitE.BackendStages.Encoded853
import InitE.BackendStages.TargetChecks.Initial853
import InitE.BackendStages.Encoded854
import InitE.BackendStages.TargetChecks.Initial854
import InitE.BackendStages.Encoded855
import InitE.BackendStages.TargetChecks.Initial855
import InitE.BackendStages.Encoded856
import InitE.BackendStages.TargetChecks.Initial856
import InitE.BackendStages.Encoded857
import InitE.BackendStages.TargetChecks.Initial857
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk24
def input : LabSem.LabProgHOL 64 := [Encoded826, Encoded827, Encoded828, Encoded829, Encoded830, Encoded831, Encoded832, Encoded833, Encoded834, Encoded835, Encoded836, Encoded837, Encoded838, Encoded839, Encoded840, Encoded841, Encoded842, Encoded843, Encoded844, Encoded845, Encoded846, Encoded847, Encoded848, Encoded849, Encoded850, Encoded851, Encoded852, Encoded853, Encoded854, Encoded855, Encoded856, Encoded857]
def output : LabSem.LabProgHOL 64 := [Initial826, Initial827, Initial828, Initial829, Initial830, Initial831, Initial832, Initial833, Initial834, Initial835, Initial836, Initial837, Initial838, Initial839, Initial840, Initial841, Initial842, Initial843, Initial844, Initial845, Initial846, Initial847, Initial848, Initial849, Initial850, Initial851, Initial852, Initial853, Initial854, Initial855, Initial856, Initial857]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk24
end InitE.BackendStages.TargetChecks
