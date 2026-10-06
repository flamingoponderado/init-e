import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData560_575
import InitE.BackendStages.FinalChunk560_575
import InitE.BackendStages.ZeroTargets560
import InitE.BackendStages.ZeroTargets561
import InitE.BackendStages.ZeroTargets562
import InitE.BackendStages.ZeroTargets563
import InitE.BackendStages.ZeroTargets564
import InitE.BackendStages.ZeroTargets565
import InitE.BackendStages.ZeroTargets566
import InitE.BackendStages.ZeroTargets567
import InitE.BackendStages.ZeroTargets568
import InitE.BackendStages.ZeroTargets569
import InitE.BackendStages.ZeroTargets570
import InitE.BackendStages.ZeroTargets571
import InitE.BackendStages.ZeroTargets572
import InitE.BackendStages.ZeroTargets573
import InitE.BackendStages.ZeroTargets574
import InitE.BackendStages.ZeroTargets575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk560_575
theorem targets_eq : ZeroProgramCollection.targets FinalChunk560_575.padded = ZeroChunkData560_575.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded560.lines.filterMap ZeroCollection.lineTarget, Padded561.lines.filterMap ZeroCollection.lineTarget, Padded562.lines.filterMap ZeroCollection.lineTarget, Padded563.lines.filterMap ZeroCollection.lineTarget, Padded564.lines.filterMap ZeroCollection.lineTarget, Padded565.lines.filterMap ZeroCollection.lineTarget, Padded566.lines.filterMap ZeroCollection.lineTarget, Padded567.lines.filterMap ZeroCollection.lineTarget, Padded568.lines.filterMap ZeroCollection.lineTarget, Padded569.lines.filterMap ZeroCollection.lineTarget, Padded570.lines.filterMap ZeroCollection.lineTarget, Padded571.lines.filterMap ZeroCollection.lineTarget, Padded572.lines.filterMap ZeroCollection.lineTarget, Padded573.lines.filterMap ZeroCollection.lineTarget, Padded574.lines.filterMap ZeroCollection.lineTarget, Padded575.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData560_575.keys
  rw [targets560_eq, targets561_eq, targets562_eq, targets563_eq, targets564_eq, targets565_eq, targets566_eq, targets567_eq, targets568_eq, targets569_eq, targets570_eq, targets571_eq, targets572_eq, targets573_eq, targets574_eq, targets575_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk560_575
