import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData464_479
import InitE.BackendStages.FinalChunk464_479
import InitE.BackendStages.ZeroTargets464
import InitE.BackendStages.ZeroTargets465
import InitE.BackendStages.ZeroTargets466
import InitE.BackendStages.ZeroTargets467
import InitE.BackendStages.ZeroTargets468
import InitE.BackendStages.ZeroTargets469
import InitE.BackendStages.ZeroTargets470
import InitE.BackendStages.ZeroTargets471
import InitE.BackendStages.ZeroTargets472
import InitE.BackendStages.ZeroTargets473
import InitE.BackendStages.ZeroTargets474
import InitE.BackendStages.ZeroTargets475
import InitE.BackendStages.ZeroTargets476
import InitE.BackendStages.ZeroTargets477
import InitE.BackendStages.ZeroTargets478
import InitE.BackendStages.ZeroTargets479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk464_479
theorem targets_eq : ZeroProgramCollection.targets FinalChunk464_479.padded = ZeroChunkData464_479.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded464.lines.filterMap ZeroCollection.lineTarget, Padded465.lines.filterMap ZeroCollection.lineTarget, Padded466.lines.filterMap ZeroCollection.lineTarget, Padded467.lines.filterMap ZeroCollection.lineTarget, Padded468.lines.filterMap ZeroCollection.lineTarget, Padded469.lines.filterMap ZeroCollection.lineTarget, Padded470.lines.filterMap ZeroCollection.lineTarget, Padded471.lines.filterMap ZeroCollection.lineTarget, Padded472.lines.filterMap ZeroCollection.lineTarget, Padded473.lines.filterMap ZeroCollection.lineTarget, Padded474.lines.filterMap ZeroCollection.lineTarget, Padded475.lines.filterMap ZeroCollection.lineTarget, Padded476.lines.filterMap ZeroCollection.lineTarget, Padded477.lines.filterMap ZeroCollection.lineTarget, Padded478.lines.filterMap ZeroCollection.lineTarget, Padded479.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData464_479.keys
  rw [targets464_eq, targets465_eq, targets466_eq, targets467_eq, targets468_eq, targets469_eq, targets470_eq, targets471_eq, targets472_eq, targets473_eq, targets474_eq, targets475_eq, targets476_eq, targets477_eq, targets478_eq, targets479_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk464_479
