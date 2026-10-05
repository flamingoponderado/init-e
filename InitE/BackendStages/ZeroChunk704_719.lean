import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData704_719
import InitE.BackendStages.FinalChunk704_719
import InitE.BackendStages.ZeroTargets704
import InitE.BackendStages.ZeroTargets705
import InitE.BackendStages.ZeroTargets706
import InitE.BackendStages.ZeroTargets707
import InitE.BackendStages.ZeroTargets708
import InitE.BackendStages.ZeroTargets709
import InitE.BackendStages.ZeroTargets710
import InitE.BackendStages.ZeroTargets711
import InitE.BackendStages.ZeroTargets712
import InitE.BackendStages.ZeroTargets713
import InitE.BackendStages.ZeroTargets714
import InitE.BackendStages.ZeroTargets715
import InitE.BackendStages.ZeroTargets716
import InitE.BackendStages.ZeroTargets717
import InitE.BackendStages.ZeroTargets718
import InitE.BackendStages.ZeroTargets719
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk704_719
theorem targets_eq : ZeroProgramCollection.targets FinalChunk704_719.padded = ZeroChunkData704_719.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded704.lines.filterMap ZeroCollection.lineTarget, Padded705.lines.filterMap ZeroCollection.lineTarget, Padded706.lines.filterMap ZeroCollection.lineTarget, Padded707.lines.filterMap ZeroCollection.lineTarget, Padded708.lines.filterMap ZeroCollection.lineTarget, Padded709.lines.filterMap ZeroCollection.lineTarget, Padded710.lines.filterMap ZeroCollection.lineTarget, Padded711.lines.filterMap ZeroCollection.lineTarget, Padded712.lines.filterMap ZeroCollection.lineTarget, Padded713.lines.filterMap ZeroCollection.lineTarget, Padded714.lines.filterMap ZeroCollection.lineTarget, Padded715.lines.filterMap ZeroCollection.lineTarget, Padded716.lines.filterMap ZeroCollection.lineTarget, Padded717.lines.filterMap ZeroCollection.lineTarget, Padded718.lines.filterMap ZeroCollection.lineTarget, Padded719.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData704_719.keys
  rw [targets704_eq, targets705_eq, targets706_eq, targets707_eq, targets708_eq, targets709_eq, targets710_eq, targets711_eq, targets712_eq, targets713_eq, targets714_eq, targets715_eq, targets716_eq, targets717_eq, targets718_eq, targets719_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk704_719
