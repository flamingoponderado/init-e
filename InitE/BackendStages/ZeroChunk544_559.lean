import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData544_559
import InitE.BackendStages.FinalChunk544_559
import InitE.BackendStages.ZeroTargets544
import InitE.BackendStages.ZeroTargets545
import InitE.BackendStages.ZeroTargets546
import InitE.BackendStages.ZeroTargets547
import InitE.BackendStages.ZeroTargets548
import InitE.BackendStages.ZeroTargets549
import InitE.BackendStages.ZeroTargets550
import InitE.BackendStages.ZeroTargets551
import InitE.BackendStages.ZeroTargets552
import InitE.BackendStages.ZeroTargets553
import InitE.BackendStages.ZeroTargets554
import InitE.BackendStages.ZeroTargets555
import InitE.BackendStages.ZeroTargets556
import InitE.BackendStages.ZeroTargets557
import InitE.BackendStages.ZeroTargets558
import InitE.BackendStages.ZeroTargets559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk544_559
theorem targets_eq : ZeroProgramCollection.targets FinalChunk544_559.padded = ZeroChunkData544_559.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded544.lines.filterMap ZeroCollection.lineTarget, Padded545.lines.filterMap ZeroCollection.lineTarget, Padded546.lines.filterMap ZeroCollection.lineTarget, Padded547.lines.filterMap ZeroCollection.lineTarget, Padded548.lines.filterMap ZeroCollection.lineTarget, Padded549.lines.filterMap ZeroCollection.lineTarget, Padded550.lines.filterMap ZeroCollection.lineTarget, Padded551.lines.filterMap ZeroCollection.lineTarget, Padded552.lines.filterMap ZeroCollection.lineTarget, Padded553.lines.filterMap ZeroCollection.lineTarget, Padded554.lines.filterMap ZeroCollection.lineTarget, Padded555.lines.filterMap ZeroCollection.lineTarget, Padded556.lines.filterMap ZeroCollection.lineTarget, Padded557.lines.filterMap ZeroCollection.lineTarget, Padded558.lines.filterMap ZeroCollection.lineTarget, Padded559.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData544_559.keys
  rw [targets544_eq, targets545_eq, targets546_eq, targets547_eq, targets548_eq, targets549_eq, targets550_eq, targets551_eq, targets552_eq, targets553_eq, targets554_eq, targets555_eq, targets556_eq, targets557_eq, targets558_eq, targets559_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk544_559
