import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData192_207
import InitE.BackendStages.FinalChunk192_207
import InitE.BackendStages.ZeroTargets192
import InitE.BackendStages.ZeroTargets193
import InitE.BackendStages.ZeroTargets194
import InitE.BackendStages.ZeroTargets195
import InitE.BackendStages.ZeroTargets196
import InitE.BackendStages.ZeroTargets197
import InitE.BackendStages.ZeroTargets198
import InitE.BackendStages.ZeroTargets199
import InitE.BackendStages.ZeroTargets200
import InitE.BackendStages.ZeroTargets201
import InitE.BackendStages.ZeroTargets202
import InitE.BackendStages.ZeroTargets203
import InitE.BackendStages.ZeroTargets204
import InitE.BackendStages.ZeroTargets205
import InitE.BackendStages.ZeroTargets206
import InitE.BackendStages.ZeroTargets207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk192_207
theorem targets_eq : ZeroProgramCollection.targets FinalChunk192_207.padded = ZeroChunkData192_207.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded192.lines.filterMap ZeroCollection.lineTarget, Padded193.lines.filterMap ZeroCollection.lineTarget, Padded194.lines.filterMap ZeroCollection.lineTarget, Padded195.lines.filterMap ZeroCollection.lineTarget, Padded196.lines.filterMap ZeroCollection.lineTarget, Padded197.lines.filterMap ZeroCollection.lineTarget, Padded198.lines.filterMap ZeroCollection.lineTarget, Padded199.lines.filterMap ZeroCollection.lineTarget, Padded200.lines.filterMap ZeroCollection.lineTarget, Padded201.lines.filterMap ZeroCollection.lineTarget, Padded202.lines.filterMap ZeroCollection.lineTarget, Padded203.lines.filterMap ZeroCollection.lineTarget, Padded204.lines.filterMap ZeroCollection.lineTarget, Padded205.lines.filterMap ZeroCollection.lineTarget, Padded206.lines.filterMap ZeroCollection.lineTarget, Padded207.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData192_207.keys
  rw [targets192_eq, targets193_eq, targets194_eq, targets195_eq, targets196_eq, targets197_eq, targets198_eq, targets199_eq, targets200_eq, targets201_eq, targets202_eq, targets203_eq, targets204_eq, targets205_eq, targets206_eq, targets207_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk192_207
