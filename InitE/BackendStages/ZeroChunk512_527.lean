import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData512_527
import InitE.BackendStages.FinalChunk512_527
import InitE.BackendStages.ZeroTargets512
import InitE.BackendStages.ZeroTargets513
import InitE.BackendStages.ZeroTargets514
import InitE.BackendStages.ZeroTargets515
import InitE.BackendStages.ZeroTargets516
import InitE.BackendStages.ZeroTargets517
import InitE.BackendStages.ZeroTargets518
import InitE.BackendStages.ZeroTargets519
import InitE.BackendStages.ZeroTargets520
import InitE.BackendStages.ZeroTargets521
import InitE.BackendStages.ZeroTargets522
import InitE.BackendStages.ZeroTargets523
import InitE.BackendStages.ZeroTargets524
import InitE.BackendStages.ZeroTargets525
import InitE.BackendStages.ZeroTargets526
import InitE.BackendStages.ZeroTargets527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk512_527
theorem targets_eq : ZeroProgramCollection.targets FinalChunk512_527.padded = ZeroChunkData512_527.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded512.lines.filterMap ZeroCollection.lineTarget, Padded513.lines.filterMap ZeroCollection.lineTarget, Padded514.lines.filterMap ZeroCollection.lineTarget, Padded515.lines.filterMap ZeroCollection.lineTarget, Padded516.lines.filterMap ZeroCollection.lineTarget, Padded517.lines.filterMap ZeroCollection.lineTarget, Padded518.lines.filterMap ZeroCollection.lineTarget, Padded519.lines.filterMap ZeroCollection.lineTarget, Padded520.lines.filterMap ZeroCollection.lineTarget, Padded521.lines.filterMap ZeroCollection.lineTarget, Padded522.lines.filterMap ZeroCollection.lineTarget, Padded523.lines.filterMap ZeroCollection.lineTarget, Padded524.lines.filterMap ZeroCollection.lineTarget, Padded525.lines.filterMap ZeroCollection.lineTarget, Padded526.lines.filterMap ZeroCollection.lineTarget, Padded527.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData512_527.keys
  rw [targets512_eq, targets513_eq, targets514_eq, targets515_eq, targets516_eq, targets517_eq, targets518_eq, targets519_eq, targets520_eq, targets521_eq, targets522_eq, targets523_eq, targets524_eq, targets525_eq, targets526_eq, targets527_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk512_527
