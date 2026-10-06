import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData656_671
import InitE.BackendStages.FinalChunk656_671
import InitE.BackendStages.ZeroTargets656
import InitE.BackendStages.ZeroTargets657
import InitE.BackendStages.ZeroTargets658
import InitE.BackendStages.ZeroTargets659
import InitE.BackendStages.ZeroTargets660
import InitE.BackendStages.ZeroTargets661
import InitE.BackendStages.ZeroTargets662
import InitE.BackendStages.ZeroTargets663
import InitE.BackendStages.ZeroTargets664
import InitE.BackendStages.ZeroTargets665
import InitE.BackendStages.ZeroTargets666
import InitE.BackendStages.ZeroTargets667
import InitE.BackendStages.ZeroTargets668
import InitE.BackendStages.ZeroTargets669
import InitE.BackendStages.ZeroTargets670
import InitE.BackendStages.ZeroTargets671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk656_671
theorem targets_eq : ZeroProgramCollection.targets FinalChunk656_671.padded = ZeroChunkData656_671.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded656.lines.filterMap ZeroCollection.lineTarget, Padded657.lines.filterMap ZeroCollection.lineTarget, Padded658.lines.filterMap ZeroCollection.lineTarget, Padded659.lines.filterMap ZeroCollection.lineTarget, Padded660.lines.filterMap ZeroCollection.lineTarget, Padded661.lines.filterMap ZeroCollection.lineTarget, Padded662.lines.filterMap ZeroCollection.lineTarget, Padded663.lines.filterMap ZeroCollection.lineTarget, Padded664.lines.filterMap ZeroCollection.lineTarget, Padded665.lines.filterMap ZeroCollection.lineTarget, Padded666.lines.filterMap ZeroCollection.lineTarget, Padded667.lines.filterMap ZeroCollection.lineTarget, Padded668.lines.filterMap ZeroCollection.lineTarget, Padded669.lines.filterMap ZeroCollection.lineTarget, Padded670.lines.filterMap ZeroCollection.lineTarget, Padded671.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData656_671.keys
  rw [targets656_eq, targets657_eq, targets658_eq, targets659_eq, targets660_eq, targets661_eq, targets662_eq, targets663_eq, targets664_eq, targets665_eq, targets666_eq, targets667_eq, targets668_eq, targets669_eq, targets670_eq, targets671_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk656_671
