import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData336_351
import InitE.BackendStages.FinalChunk336_351
import InitE.BackendStages.ZeroTargets336
import InitE.BackendStages.ZeroTargets337
import InitE.BackendStages.ZeroTargets338
import InitE.BackendStages.ZeroTargets339
import InitE.BackendStages.ZeroTargets340
import InitE.BackendStages.ZeroTargets341
import InitE.BackendStages.ZeroTargets342
import InitE.BackendStages.ZeroTargets343
import InitE.BackendStages.ZeroTargets344
import InitE.BackendStages.ZeroTargets345
import InitE.BackendStages.ZeroTargets346
import InitE.BackendStages.ZeroTargets347
import InitE.BackendStages.ZeroTargets348
import InitE.BackendStages.ZeroTargets349
import InitE.BackendStages.ZeroTargets350
import InitE.BackendStages.ZeroTargets351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk336_351
theorem targets_eq : ZeroProgramCollection.targets FinalChunk336_351.padded = ZeroChunkData336_351.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded336.lines.filterMap ZeroCollection.lineTarget, Padded337.lines.filterMap ZeroCollection.lineTarget, Padded338.lines.filterMap ZeroCollection.lineTarget, Padded339.lines.filterMap ZeroCollection.lineTarget, Padded340.lines.filterMap ZeroCollection.lineTarget, Padded341.lines.filterMap ZeroCollection.lineTarget, Padded342.lines.filterMap ZeroCollection.lineTarget, Padded343.lines.filterMap ZeroCollection.lineTarget, Padded344.lines.filterMap ZeroCollection.lineTarget, Padded345.lines.filterMap ZeroCollection.lineTarget, Padded346.lines.filterMap ZeroCollection.lineTarget, Padded347.lines.filterMap ZeroCollection.lineTarget, Padded348.lines.filterMap ZeroCollection.lineTarget, Padded349.lines.filterMap ZeroCollection.lineTarget, Padded350.lines.filterMap ZeroCollection.lineTarget, Padded351.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData336_351.keys
  rw [targets336_eq, targets337_eq, targets338_eq, targets339_eq, targets340_eq, targets341_eq, targets342_eq, targets343_eq, targets344_eq, targets345_eq, targets346_eq, targets347_eq, targets348_eq, targets349_eq, targets350_eq, targets351_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk336_351
