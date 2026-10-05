import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData592_607
import InitE.BackendStages.FinalChunk592_607
import InitE.BackendStages.ZeroTargets592
import InitE.BackendStages.ZeroTargets593
import InitE.BackendStages.ZeroTargets594
import InitE.BackendStages.ZeroTargets595
import InitE.BackendStages.ZeroTargets596
import InitE.BackendStages.ZeroTargets597
import InitE.BackendStages.ZeroTargets598
import InitE.BackendStages.ZeroTargets599
import InitE.BackendStages.ZeroTargets600
import InitE.BackendStages.ZeroTargets601
import InitE.BackendStages.ZeroTargets602
import InitE.BackendStages.ZeroTargets603
import InitE.BackendStages.ZeroTargets604
import InitE.BackendStages.ZeroTargets605
import InitE.BackendStages.ZeroTargets606
import InitE.BackendStages.ZeroTargets607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk592_607
theorem targets_eq : ZeroProgramCollection.targets FinalChunk592_607.padded = ZeroChunkData592_607.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded592.lines.filterMap ZeroCollection.lineTarget, Padded593.lines.filterMap ZeroCollection.lineTarget, Padded594.lines.filterMap ZeroCollection.lineTarget, Padded595.lines.filterMap ZeroCollection.lineTarget, Padded596.lines.filterMap ZeroCollection.lineTarget, Padded597.lines.filterMap ZeroCollection.lineTarget, Padded598.lines.filterMap ZeroCollection.lineTarget, Padded599.lines.filterMap ZeroCollection.lineTarget, Padded600.lines.filterMap ZeroCollection.lineTarget, Padded601.lines.filterMap ZeroCollection.lineTarget, Padded602.lines.filterMap ZeroCollection.lineTarget, Padded603.lines.filterMap ZeroCollection.lineTarget, Padded604.lines.filterMap ZeroCollection.lineTarget, Padded605.lines.filterMap ZeroCollection.lineTarget, Padded606.lines.filterMap ZeroCollection.lineTarget, Padded607.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData592_607.keys
  rw [targets592_eq, targets593_eq, targets594_eq, targets595_eq, targets596_eq, targets597_eq, targets598_eq, targets599_eq, targets600_eq, targets601_eq, targets602_eq, targets603_eq, targets604_eq, targets605_eq, targets606_eq, targets607_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk592_607
