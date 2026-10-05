import InitE.BackendStages.Encoded666
import InitE.BackendStages.TargetChecks.Initial666
import InitE.BackendStages.Encoded667
import InitE.BackendStages.TargetChecks.Initial667
import InitE.BackendStages.Encoded668
import InitE.BackendStages.TargetChecks.Initial668
import InitE.BackendStages.Encoded669
import InitE.BackendStages.TargetChecks.Initial669
import InitE.BackendStages.Encoded670
import InitE.BackendStages.TargetChecks.Initial670
import InitE.BackendStages.Encoded671
import InitE.BackendStages.TargetChecks.Initial671
import InitE.BackendStages.Encoded672
import InitE.BackendStages.TargetChecks.Initial672
import InitE.BackendStages.Encoded673
import InitE.BackendStages.TargetChecks.Initial673
import InitE.BackendStages.Encoded674
import InitE.BackendStages.TargetChecks.Initial674
import InitE.BackendStages.Encoded675
import InitE.BackendStages.TargetChecks.Initial675
import InitE.BackendStages.Encoded676
import InitE.BackendStages.TargetChecks.Initial676
import InitE.BackendStages.Encoded677
import InitE.BackendStages.TargetChecks.Initial677
import InitE.BackendStages.Encoded678
import InitE.BackendStages.TargetChecks.Initial678
import InitE.BackendStages.Encoded679
import InitE.BackendStages.TargetChecks.Initial679
import InitE.BackendStages.Encoded680
import InitE.BackendStages.TargetChecks.Initial680
import InitE.BackendStages.Encoded681
import InitE.BackendStages.TargetChecks.Initial681
import InitE.BackendStages.Encoded682
import InitE.BackendStages.TargetChecks.Initial682
import InitE.BackendStages.Encoded683
import InitE.BackendStages.TargetChecks.Initial683
import InitE.BackendStages.Encoded684
import InitE.BackendStages.TargetChecks.Initial684
import InitE.BackendStages.Encoded685
import InitE.BackendStages.TargetChecks.Initial685
import InitE.BackendStages.Encoded686
import InitE.BackendStages.TargetChecks.Initial686
import InitE.BackendStages.Encoded687
import InitE.BackendStages.TargetChecks.Initial687
import InitE.BackendStages.Encoded688
import InitE.BackendStages.TargetChecks.Initial688
import InitE.BackendStages.Encoded689
import InitE.BackendStages.TargetChecks.Initial689
import InitE.BackendStages.Encoded690
import InitE.BackendStages.TargetChecks.Initial690
import InitE.BackendStages.Encoded691
import InitE.BackendStages.TargetChecks.Initial691
import InitE.BackendStages.Encoded692
import InitE.BackendStages.TargetChecks.Initial692
import InitE.BackendStages.Encoded693
import InitE.BackendStages.TargetChecks.Initial693
import InitE.BackendStages.Encoded694
import InitE.BackendStages.TargetChecks.Initial694
import InitE.BackendStages.Encoded695
import InitE.BackendStages.TargetChecks.Initial695
import InitE.BackendStages.Encoded696
import InitE.BackendStages.TargetChecks.Initial696
import InitE.BackendStages.Encoded697
import InitE.BackendStages.TargetChecks.Initial697
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk19
def input : LabSem.LabProgHOL 64 := [Encoded666, Encoded667, Encoded668, Encoded669, Encoded670, Encoded671, Encoded672, Encoded673, Encoded674, Encoded675, Encoded676, Encoded677, Encoded678, Encoded679, Encoded680, Encoded681, Encoded682, Encoded683, Encoded684, Encoded685, Encoded686, Encoded687, Encoded688, Encoded689, Encoded690, Encoded691, Encoded692, Encoded693, Encoded694, Encoded695, Encoded696, Encoded697]
def output : LabSem.LabProgHOL 64 := [Initial666, Initial667, Initial668, Initial669, Initial670, Initial671, Initial672, Initial673, Initial674, Initial675, Initial676, Initial677, Initial678, Initial679, Initial680, Initial681, Initial682, Initial683, Initial684, Initial685, Initial686, Initial687, Initial688, Initial689, Initial690, Initial691, Initial692, Initial693, Initial694, Initial695, Initial696, Initial697]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk19
end InitE.BackendStages.TargetChecks
