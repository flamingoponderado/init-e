import InitE.BackendStages.Encoded634
import InitE.BackendStages.TargetChecks.Initial634
import InitE.BackendStages.Encoded635
import InitE.BackendStages.TargetChecks.Initial635
import InitE.BackendStages.Encoded636
import InitE.BackendStages.TargetChecks.Initial636
import InitE.BackendStages.Encoded637
import InitE.BackendStages.TargetChecks.Initial637
import InitE.BackendStages.Encoded638
import InitE.BackendStages.TargetChecks.Initial638
import InitE.BackendStages.Encoded639
import InitE.BackendStages.TargetChecks.Initial639
import InitE.BackendStages.Encoded640
import InitE.BackendStages.TargetChecks.Initial640
import InitE.BackendStages.Encoded641
import InitE.BackendStages.TargetChecks.Initial641
import InitE.BackendStages.Encoded642
import InitE.BackendStages.TargetChecks.Initial642
import InitE.BackendStages.Encoded643
import InitE.BackendStages.TargetChecks.Initial643
import InitE.BackendStages.Encoded644
import InitE.BackendStages.TargetChecks.Initial644
import InitE.BackendStages.Encoded645
import InitE.BackendStages.TargetChecks.Initial645
import InitE.BackendStages.Encoded646
import InitE.BackendStages.TargetChecks.Initial646
import InitE.BackendStages.Encoded647
import InitE.BackendStages.TargetChecks.Initial647
import InitE.BackendStages.Encoded648
import InitE.BackendStages.TargetChecks.Initial648
import InitE.BackendStages.Encoded649
import InitE.BackendStages.TargetChecks.Initial649
import InitE.BackendStages.Encoded650
import InitE.BackendStages.TargetChecks.Initial650
import InitE.BackendStages.Encoded651
import InitE.BackendStages.TargetChecks.Initial651
import InitE.BackendStages.Encoded652
import InitE.BackendStages.TargetChecks.Initial652
import InitE.BackendStages.Encoded653
import InitE.BackendStages.TargetChecks.Initial653
import InitE.BackendStages.Encoded654
import InitE.BackendStages.TargetChecks.Initial654
import InitE.BackendStages.Encoded655
import InitE.BackendStages.TargetChecks.Initial655
import InitE.BackendStages.Encoded656
import InitE.BackendStages.TargetChecks.Initial656
import InitE.BackendStages.Encoded657
import InitE.BackendStages.TargetChecks.Initial657
import InitE.BackendStages.Encoded658
import InitE.BackendStages.TargetChecks.Initial658
import InitE.BackendStages.Encoded659
import InitE.BackendStages.TargetChecks.Initial659
import InitE.BackendStages.Encoded660
import InitE.BackendStages.TargetChecks.Initial660
import InitE.BackendStages.Encoded661
import InitE.BackendStages.TargetChecks.Initial661
import InitE.BackendStages.Encoded662
import InitE.BackendStages.TargetChecks.Initial662
import InitE.BackendStages.Encoded663
import InitE.BackendStages.TargetChecks.Initial663
import InitE.BackendStages.Encoded664
import InitE.BackendStages.TargetChecks.Initial664
import InitE.BackendStages.Encoded665
import InitE.BackendStages.TargetChecks.Initial665
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk18
def input : LabSem.LabProgHOL 64 := [Encoded634, Encoded635, Encoded636, Encoded637, Encoded638, Encoded639, Encoded640, Encoded641, Encoded642, Encoded643, Encoded644, Encoded645, Encoded646, Encoded647, Encoded648, Encoded649, Encoded650, Encoded651, Encoded652, Encoded653, Encoded654, Encoded655, Encoded656, Encoded657, Encoded658, Encoded659, Encoded660, Encoded661, Encoded662, Encoded663, Encoded664, Encoded665]
def output : LabSem.LabProgHOL 64 := [Initial634, Initial635, Initial636, Initial637, Initial638, Initial639, Initial640, Initial641, Initial642, Initial643, Initial644, Initial645, Initial646, Initial647, Initial648, Initial649, Initial650, Initial651, Initial652, Initial653, Initial654, Initial655, Initial656, Initial657, Initial658, Initial659, Initial660, Initial661, Initial662, Initial663, Initial664, Initial665]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk18
end InitE.BackendStages.TargetChecks
