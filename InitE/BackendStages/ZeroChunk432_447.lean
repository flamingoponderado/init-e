import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData432_447
import InitE.BackendStages.FinalChunk432_447
import InitE.BackendStages.ZeroTargets432
import InitE.BackendStages.ZeroTargets433
import InitE.BackendStages.ZeroTargets434
import InitE.BackendStages.ZeroTargets435
import InitE.BackendStages.ZeroTargets436
import InitE.BackendStages.ZeroTargets437
import InitE.BackendStages.ZeroTargets438
import InitE.BackendStages.ZeroTargets439
import InitE.BackendStages.ZeroTargets440
import InitE.BackendStages.ZeroTargets441
import InitE.BackendStages.ZeroTargets442
import InitE.BackendStages.ZeroTargets443
import InitE.BackendStages.ZeroTargets444
import InitE.BackendStages.ZeroTargets445
import InitE.BackendStages.ZeroTargets446
import InitE.BackendStages.ZeroTargets447
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk432_447
theorem targets_eq : ZeroProgramCollection.targets FinalChunk432_447.padded = ZeroChunkData432_447.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded432.lines.filterMap ZeroCollection.lineTarget, Padded433.lines.filterMap ZeroCollection.lineTarget, Padded434.lines.filterMap ZeroCollection.lineTarget, Padded435.lines.filterMap ZeroCollection.lineTarget, Padded436.lines.filterMap ZeroCollection.lineTarget, Padded437.lines.filterMap ZeroCollection.lineTarget, Padded438.lines.filterMap ZeroCollection.lineTarget, Padded439.lines.filterMap ZeroCollection.lineTarget, Padded440.lines.filterMap ZeroCollection.lineTarget, Padded441.lines.filterMap ZeroCollection.lineTarget, Padded442.lines.filterMap ZeroCollection.lineTarget, Padded443.lines.filterMap ZeroCollection.lineTarget, Padded444.lines.filterMap ZeroCollection.lineTarget, Padded445.lines.filterMap ZeroCollection.lineTarget, Padded446.lines.filterMap ZeroCollection.lineTarget, Padded447.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData432_447.keys
  rw [targets432_eq, targets433_eq, targets434_eq, targets435_eq, targets436_eq, targets437_eq, targets438_eq, targets439_eq, targets440_eq, targets441_eq, targets442_eq, targets443_eq, targets444_eq, targets445_eq, targets446_eq, targets447_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk432_447
