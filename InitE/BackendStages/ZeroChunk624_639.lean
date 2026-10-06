import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData624_639
import InitE.BackendStages.FinalChunk624_639
import InitE.BackendStages.ZeroTargets624
import InitE.BackendStages.ZeroTargets625
import InitE.BackendStages.ZeroTargets626
import InitE.BackendStages.ZeroTargets627
import InitE.BackendStages.ZeroTargets628
import InitE.BackendStages.ZeroTargets629
import InitE.BackendStages.ZeroTargets630
import InitE.BackendStages.ZeroTargets631
import InitE.BackendStages.ZeroTargets632
import InitE.BackendStages.ZeroTargets633
import InitE.BackendStages.ZeroTargets634
import InitE.BackendStages.ZeroTargets635
import InitE.BackendStages.ZeroTargets636
import InitE.BackendStages.ZeroTargets637
import InitE.BackendStages.ZeroTargets638
import InitE.BackendStages.ZeroTargets639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk624_639
theorem targets_eq : ZeroProgramCollection.targets FinalChunk624_639.padded = ZeroChunkData624_639.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded624.lines.filterMap ZeroCollection.lineTarget, Padded625.lines.filterMap ZeroCollection.lineTarget, Padded626.lines.filterMap ZeroCollection.lineTarget, Padded627.lines.filterMap ZeroCollection.lineTarget, Padded628.lines.filterMap ZeroCollection.lineTarget, Padded629.lines.filterMap ZeroCollection.lineTarget, Padded630.lines.filterMap ZeroCollection.lineTarget, Padded631.lines.filterMap ZeroCollection.lineTarget, Padded632.lines.filterMap ZeroCollection.lineTarget, Padded633.lines.filterMap ZeroCollection.lineTarget, Padded634.lines.filterMap ZeroCollection.lineTarget, Padded635.lines.filterMap ZeroCollection.lineTarget, Padded636.lines.filterMap ZeroCollection.lineTarget, Padded637.lines.filterMap ZeroCollection.lineTarget, Padded638.lines.filterMap ZeroCollection.lineTarget, Padded639.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData624_639.keys
  rw [targets624_eq, targets625_eq, targets626_eq, targets627_eq, targets628_eq, targets629_eq, targets630_eq, targets631_eq, targets632_eq, targets633_eq, targets634_eq, targets635_eq, targets636_eq, targets637_eq, targets638_eq, targets639_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk624_639
