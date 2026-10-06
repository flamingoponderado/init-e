import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData480_495
import InitE.BackendStages.FinalChunk480_495
import InitE.BackendStages.ZeroTargets480
import InitE.BackendStages.ZeroTargets481
import InitE.BackendStages.ZeroTargets482
import InitE.BackendStages.ZeroTargets483
import InitE.BackendStages.ZeroTargets484
import InitE.BackendStages.ZeroTargets485
import InitE.BackendStages.ZeroTargets486
import InitE.BackendStages.ZeroTargets487
import InitE.BackendStages.ZeroTargets488
import InitE.BackendStages.ZeroTargets489
import InitE.BackendStages.ZeroTargets490
import InitE.BackendStages.ZeroTargets491
import InitE.BackendStages.ZeroTargets492
import InitE.BackendStages.ZeroTargets493
import InitE.BackendStages.ZeroTargets494
import InitE.BackendStages.ZeroTargets495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk480_495
theorem targets_eq : ZeroProgramCollection.targets FinalChunk480_495.padded = ZeroChunkData480_495.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded480.lines.filterMap ZeroCollection.lineTarget, Padded481.lines.filterMap ZeroCollection.lineTarget, Padded482.lines.filterMap ZeroCollection.lineTarget, Padded483.lines.filterMap ZeroCollection.lineTarget, Padded484.lines.filterMap ZeroCollection.lineTarget, Padded485.lines.filterMap ZeroCollection.lineTarget, Padded486.lines.filterMap ZeroCollection.lineTarget, Padded487.lines.filterMap ZeroCollection.lineTarget, Padded488.lines.filterMap ZeroCollection.lineTarget, Padded489.lines.filterMap ZeroCollection.lineTarget, Padded490.lines.filterMap ZeroCollection.lineTarget, Padded491.lines.filterMap ZeroCollection.lineTarget, Padded492.lines.filterMap ZeroCollection.lineTarget, Padded493.lines.filterMap ZeroCollection.lineTarget, Padded494.lines.filterMap ZeroCollection.lineTarget, Padded495.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData480_495.keys
  rw [targets480_eq, targets481_eq, targets482_eq, targets483_eq, targets484_eq, targets485_eq, targets486_eq, targets487_eq, targets488_eq, targets489_eq, targets490_eq, targets491_eq, targets492_eq, targets493_eq, targets494_eq, targets495_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk480_495
