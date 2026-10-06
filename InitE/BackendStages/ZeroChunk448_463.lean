import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData448_463
import InitE.BackendStages.FinalChunk448_463
import InitE.BackendStages.ZeroTargets448
import InitE.BackendStages.ZeroTargets449
import InitE.BackendStages.ZeroTargets450
import InitE.BackendStages.ZeroTargets451
import InitE.BackendStages.ZeroTargets452
import InitE.BackendStages.ZeroTargets453
import InitE.BackendStages.ZeroTargets454
import InitE.BackendStages.ZeroTargets455
import InitE.BackendStages.ZeroTargets456
import InitE.BackendStages.ZeroTargets457
import InitE.BackendStages.ZeroTargets458
import InitE.BackendStages.ZeroTargets459
import InitE.BackendStages.ZeroTargets460
import InitE.BackendStages.ZeroTargets461
import InitE.BackendStages.ZeroTargets462
import InitE.BackendStages.ZeroTargets463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk448_463
theorem targets_eq : ZeroProgramCollection.targets FinalChunk448_463.padded = ZeroChunkData448_463.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded448.lines.filterMap ZeroCollection.lineTarget, Padded449.lines.filterMap ZeroCollection.lineTarget, Padded450.lines.filterMap ZeroCollection.lineTarget, Padded451.lines.filterMap ZeroCollection.lineTarget, Padded452.lines.filterMap ZeroCollection.lineTarget, Padded453.lines.filterMap ZeroCollection.lineTarget, Padded454.lines.filterMap ZeroCollection.lineTarget, Padded455.lines.filterMap ZeroCollection.lineTarget, Padded456.lines.filterMap ZeroCollection.lineTarget, Padded457.lines.filterMap ZeroCollection.lineTarget, Padded458.lines.filterMap ZeroCollection.lineTarget, Padded459.lines.filterMap ZeroCollection.lineTarget, Padded460.lines.filterMap ZeroCollection.lineTarget, Padded461.lines.filterMap ZeroCollection.lineTarget, Padded462.lines.filterMap ZeroCollection.lineTarget, Padded463.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData448_463.keys
  rw [targets448_eq, targets449_eq, targets450_eq, targets451_eq, targets452_eq, targets453_eq, targets454_eq, targets455_eq, targets456_eq, targets457_eq, targets458_eq, targets459_eq, targets460_eq, targets461_eq, targets462_eq, targets463_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk448_463
