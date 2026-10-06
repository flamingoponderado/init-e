import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData384_399
import InitE.BackendStages.FinalChunk384_399
import InitE.BackendStages.ZeroTargets384
import InitE.BackendStages.ZeroTargets385
import InitE.BackendStages.ZeroTargets386
import InitE.BackendStages.ZeroTargets387
import InitE.BackendStages.ZeroTargets388
import InitE.BackendStages.ZeroTargets389
import InitE.BackendStages.ZeroTargets390
import InitE.BackendStages.ZeroTargets391
import InitE.BackendStages.ZeroTargets392
import InitE.BackendStages.ZeroTargets393
import InitE.BackendStages.ZeroTargets394
import InitE.BackendStages.ZeroTargets395
import InitE.BackendStages.ZeroTargets396
import InitE.BackendStages.ZeroTargets397
import InitE.BackendStages.ZeroTargets398
import InitE.BackendStages.ZeroTargets399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk384_399
theorem targets_eq : ZeroProgramCollection.targets FinalChunk384_399.padded = ZeroChunkData384_399.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded384.lines.filterMap ZeroCollection.lineTarget, Padded385.lines.filterMap ZeroCollection.lineTarget, Padded386.lines.filterMap ZeroCollection.lineTarget, Padded387.lines.filterMap ZeroCollection.lineTarget, Padded388.lines.filterMap ZeroCollection.lineTarget, Padded389.lines.filterMap ZeroCollection.lineTarget, Padded390.lines.filterMap ZeroCollection.lineTarget, Padded391.lines.filterMap ZeroCollection.lineTarget, Padded392.lines.filterMap ZeroCollection.lineTarget, Padded393.lines.filterMap ZeroCollection.lineTarget, Padded394.lines.filterMap ZeroCollection.lineTarget, Padded395.lines.filterMap ZeroCollection.lineTarget, Padded396.lines.filterMap ZeroCollection.lineTarget, Padded397.lines.filterMap ZeroCollection.lineTarget, Padded398.lines.filterMap ZeroCollection.lineTarget, Padded399.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData384_399.keys
  rw [targets384_eq, targets385_eq, targets386_eq, targets387_eq, targets388_eq, targets389_eq, targets390_eq, targets391_eq, targets392_eq, targets393_eq, targets394_eq, targets395_eq, targets396_eq, targets397_eq, targets398_eq, targets399_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk384_399
