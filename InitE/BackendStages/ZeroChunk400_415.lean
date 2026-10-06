import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData400_415
import InitE.BackendStages.FinalChunk400_415
import InitE.BackendStages.ZeroTargets400
import InitE.BackendStages.ZeroTargets401
import InitE.BackendStages.ZeroTargets402
import InitE.BackendStages.ZeroTargets403
import InitE.BackendStages.ZeroTargets404
import InitE.BackendStages.ZeroTargets405
import InitE.BackendStages.ZeroTargets406
import InitE.BackendStages.ZeroTargets407
import InitE.BackendStages.ZeroTargets408
import InitE.BackendStages.ZeroTargets409
import InitE.BackendStages.ZeroTargets410
import InitE.BackendStages.ZeroTargets411
import InitE.BackendStages.ZeroTargets412
import InitE.BackendStages.ZeroTargets413
import InitE.BackendStages.ZeroTargets414
import InitE.BackendStages.ZeroTargets415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk400_415
theorem targets_eq : ZeroProgramCollection.targets FinalChunk400_415.padded = ZeroChunkData400_415.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded400.lines.filterMap ZeroCollection.lineTarget, Padded401.lines.filterMap ZeroCollection.lineTarget, Padded402.lines.filterMap ZeroCollection.lineTarget, Padded403.lines.filterMap ZeroCollection.lineTarget, Padded404.lines.filterMap ZeroCollection.lineTarget, Padded405.lines.filterMap ZeroCollection.lineTarget, Padded406.lines.filterMap ZeroCollection.lineTarget, Padded407.lines.filterMap ZeroCollection.lineTarget, Padded408.lines.filterMap ZeroCollection.lineTarget, Padded409.lines.filterMap ZeroCollection.lineTarget, Padded410.lines.filterMap ZeroCollection.lineTarget, Padded411.lines.filterMap ZeroCollection.lineTarget, Padded412.lines.filterMap ZeroCollection.lineTarget, Padded413.lines.filterMap ZeroCollection.lineTarget, Padded414.lines.filterMap ZeroCollection.lineTarget, Padded415.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData400_415.keys
  rw [targets400_eq, targets401_eq, targets402_eq, targets403_eq, targets404_eq, targets405_eq, targets406_eq, targets407_eq, targets408_eq, targets409_eq, targets410_eq, targets411_eq, targets412_eq, targets413_eq, targets414_eq, targets415_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk400_415
