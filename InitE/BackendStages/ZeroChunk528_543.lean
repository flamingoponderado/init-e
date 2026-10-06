import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData528_543
import InitE.BackendStages.FinalChunk528_543
import InitE.BackendStages.ZeroTargets528
import InitE.BackendStages.ZeroTargets529
import InitE.BackendStages.ZeroTargets530
import InitE.BackendStages.ZeroTargets531
import InitE.BackendStages.ZeroTargets532
import InitE.BackendStages.ZeroTargets533
import InitE.BackendStages.ZeroTargets534
import InitE.BackendStages.ZeroTargets535
import InitE.BackendStages.ZeroTargets536
import InitE.BackendStages.ZeroTargets537
import InitE.BackendStages.ZeroTargets538
import InitE.BackendStages.ZeroTargets539
import InitE.BackendStages.ZeroTargets540
import InitE.BackendStages.ZeroTargets541
import InitE.BackendStages.ZeroTargets542
import InitE.BackendStages.ZeroTargets543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk528_543
theorem targets_eq : ZeroProgramCollection.targets FinalChunk528_543.padded = ZeroChunkData528_543.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded528.lines.filterMap ZeroCollection.lineTarget, Padded529.lines.filterMap ZeroCollection.lineTarget, Padded530.lines.filterMap ZeroCollection.lineTarget, Padded531.lines.filterMap ZeroCollection.lineTarget, Padded532.lines.filterMap ZeroCollection.lineTarget, Padded533.lines.filterMap ZeroCollection.lineTarget, Padded534.lines.filterMap ZeroCollection.lineTarget, Padded535.lines.filterMap ZeroCollection.lineTarget, Padded536.lines.filterMap ZeroCollection.lineTarget, Padded537.lines.filterMap ZeroCollection.lineTarget, Padded538.lines.filterMap ZeroCollection.lineTarget, Padded539.lines.filterMap ZeroCollection.lineTarget, Padded540.lines.filterMap ZeroCollection.lineTarget, Padded541.lines.filterMap ZeroCollection.lineTarget, Padded542.lines.filterMap ZeroCollection.lineTarget, Padded543.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData528_543.keys
  rw [targets528_eq, targets529_eq, targets530_eq, targets531_eq, targets532_eq, targets533_eq, targets534_eq, targets535_eq, targets536_eq, targets537_eq, targets538_eq, targets539_eq, targets540_eq, targets541_eq, targets542_eq, targets543_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk528_543
