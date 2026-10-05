import InitE.BackendStages.Encoded762
import InitE.BackendStages.TargetChecks.Initial762
import InitE.BackendStages.Encoded763
import InitE.BackendStages.TargetChecks.Initial763
import InitE.BackendStages.Encoded764
import InitE.BackendStages.TargetChecks.Initial764
import InitE.BackendStages.Encoded765
import InitE.BackendStages.TargetChecks.Initial765
import InitE.BackendStages.Encoded766
import InitE.BackendStages.TargetChecks.Initial766
import InitE.BackendStages.Encoded767
import InitE.BackendStages.TargetChecks.Initial767
import InitE.BackendStages.Encoded768
import InitE.BackendStages.TargetChecks.Initial768
import InitE.BackendStages.Encoded769
import InitE.BackendStages.TargetChecks.Initial769
import InitE.BackendStages.Encoded770
import InitE.BackendStages.TargetChecks.Initial770
import InitE.BackendStages.Encoded771
import InitE.BackendStages.TargetChecks.Initial771
import InitE.BackendStages.Encoded772
import InitE.BackendStages.TargetChecks.Initial772
import InitE.BackendStages.Encoded773
import InitE.BackendStages.TargetChecks.Initial773
import InitE.BackendStages.Encoded774
import InitE.BackendStages.TargetChecks.Initial774
import InitE.BackendStages.Encoded775
import InitE.BackendStages.TargetChecks.Initial775
import InitE.BackendStages.Encoded776
import InitE.BackendStages.TargetChecks.Initial776
import InitE.BackendStages.Encoded777
import InitE.BackendStages.TargetChecks.Initial777
import InitE.BackendStages.Encoded778
import InitE.BackendStages.TargetChecks.Initial778
import InitE.BackendStages.Encoded779
import InitE.BackendStages.TargetChecks.Initial779
import InitE.BackendStages.Encoded780
import InitE.BackendStages.TargetChecks.Initial780
import InitE.BackendStages.Encoded781
import InitE.BackendStages.TargetChecks.Initial781
import InitE.BackendStages.Encoded782
import InitE.BackendStages.TargetChecks.Initial782
import InitE.BackendStages.Encoded783
import InitE.BackendStages.TargetChecks.Initial783
import InitE.BackendStages.Encoded784
import InitE.BackendStages.TargetChecks.Initial784
import InitE.BackendStages.Encoded785
import InitE.BackendStages.TargetChecks.Initial785
import InitE.BackendStages.Encoded786
import InitE.BackendStages.TargetChecks.Initial786
import InitE.BackendStages.Encoded787
import InitE.BackendStages.TargetChecks.Initial787
import InitE.BackendStages.Encoded788
import InitE.BackendStages.TargetChecks.Initial788
import InitE.BackendStages.Encoded789
import InitE.BackendStages.TargetChecks.Initial789
import InitE.BackendStages.Encoded790
import InitE.BackendStages.TargetChecks.Initial790
import InitE.BackendStages.Encoded791
import InitE.BackendStages.TargetChecks.Initial791
import InitE.BackendStages.Encoded792
import InitE.BackendStages.TargetChecks.Initial792
import InitE.BackendStages.Encoded793
import InitE.BackendStages.TargetChecks.Initial793
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk22
def input : LabSem.LabProgHOL 64 := [Encoded762, Encoded763, Encoded764, Encoded765, Encoded766, Encoded767, Encoded768, Encoded769, Encoded770, Encoded771, Encoded772, Encoded773, Encoded774, Encoded775, Encoded776, Encoded777, Encoded778, Encoded779, Encoded780, Encoded781, Encoded782, Encoded783, Encoded784, Encoded785, Encoded786, Encoded787, Encoded788, Encoded789, Encoded790, Encoded791, Encoded792, Encoded793]
def output : LabSem.LabProgHOL 64 := [Initial762, Initial763, Initial764, Initial765, Initial766, Initial767, Initial768, Initial769, Initial770, Initial771, Initial772, Initial773, Initial774, Initial775, Initial776, Initial777, Initial778, Initial779, Initial780, Initial781, Initial782, Initial783, Initial784, Initial785, Initial786, Initial787, Initial788, Initial789, Initial790, Initial791, Initial792, Initial793]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk22
end InitE.BackendStages.TargetChecks
