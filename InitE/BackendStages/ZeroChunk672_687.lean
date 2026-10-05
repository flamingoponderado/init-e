import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData672_687
import InitE.BackendStages.FinalChunk672_687
import InitE.BackendStages.ZeroTargets672
import InitE.BackendStages.ZeroTargets673
import InitE.BackendStages.ZeroTargets674
import InitE.BackendStages.ZeroTargets675
import InitE.BackendStages.ZeroTargets676
import InitE.BackendStages.ZeroTargets677
import InitE.BackendStages.ZeroTargets678
import InitE.BackendStages.ZeroTargets679
import InitE.BackendStages.ZeroTargets680
import InitE.BackendStages.ZeroTargets681
import InitE.BackendStages.ZeroTargets682
import InitE.BackendStages.ZeroTargets683
import InitE.BackendStages.ZeroTargets684
import InitE.BackendStages.ZeroTargets685
import InitE.BackendStages.ZeroTargets686
import InitE.BackendStages.ZeroTargets687
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk672_687
theorem targets_eq : ZeroProgramCollection.targets FinalChunk672_687.padded = ZeroChunkData672_687.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded672.lines.filterMap ZeroCollection.lineTarget, Padded673.lines.filterMap ZeroCollection.lineTarget, Padded674.lines.filterMap ZeroCollection.lineTarget, Padded675.lines.filterMap ZeroCollection.lineTarget, Padded676.lines.filterMap ZeroCollection.lineTarget, Padded677.lines.filterMap ZeroCollection.lineTarget, Padded678.lines.filterMap ZeroCollection.lineTarget, Padded679.lines.filterMap ZeroCollection.lineTarget, Padded680.lines.filterMap ZeroCollection.lineTarget, Padded681.lines.filterMap ZeroCollection.lineTarget, Padded682.lines.filterMap ZeroCollection.lineTarget, Padded683.lines.filterMap ZeroCollection.lineTarget, Padded684.lines.filterMap ZeroCollection.lineTarget, Padded685.lines.filterMap ZeroCollection.lineTarget, Padded686.lines.filterMap ZeroCollection.lineTarget, Padded687.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData672_687.keys
  rw [targets672_eq, targets673_eq, targets674_eq, targets675_eq, targets676_eq, targets677_eq, targets678_eq, targets679_eq, targets680_eq, targets681_eq, targets682_eq, targets683_eq, targets684_eq, targets685_eq, targets686_eq, targets687_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk672_687
