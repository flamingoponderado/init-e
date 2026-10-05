import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData288_303
import InitE.BackendStages.FinalChunk288_303
import InitE.BackendStages.ZeroTargets288
import InitE.BackendStages.ZeroTargets289
import InitE.BackendStages.ZeroTargets290
import InitE.BackendStages.ZeroTargets291
import InitE.BackendStages.ZeroTargets292
import InitE.BackendStages.ZeroTargets293
import InitE.BackendStages.ZeroTargets294
import InitE.BackendStages.ZeroTargets295
import InitE.BackendStages.ZeroTargets296
import InitE.BackendStages.ZeroTargets297
import InitE.BackendStages.ZeroTargets298
import InitE.BackendStages.ZeroTargets299
import InitE.BackendStages.ZeroTargets300
import InitE.BackendStages.ZeroTargets301
import InitE.BackendStages.ZeroTargets302
import InitE.BackendStages.ZeroTargets303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk288_303
theorem targets_eq : ZeroProgramCollection.targets FinalChunk288_303.padded = ZeroChunkData288_303.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded288.lines.filterMap ZeroCollection.lineTarget, Padded289.lines.filterMap ZeroCollection.lineTarget, Padded290.lines.filterMap ZeroCollection.lineTarget, Padded291.lines.filterMap ZeroCollection.lineTarget, Padded292.lines.filterMap ZeroCollection.lineTarget, Padded293.lines.filterMap ZeroCollection.lineTarget, Padded294.lines.filterMap ZeroCollection.lineTarget, Padded295.lines.filterMap ZeroCollection.lineTarget, Padded296.lines.filterMap ZeroCollection.lineTarget, Padded297.lines.filterMap ZeroCollection.lineTarget, Padded298.lines.filterMap ZeroCollection.lineTarget, Padded299.lines.filterMap ZeroCollection.lineTarget, Padded300.lines.filterMap ZeroCollection.lineTarget, Padded301.lines.filterMap ZeroCollection.lineTarget, Padded302.lines.filterMap ZeroCollection.lineTarget, Padded303.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData288_303.keys
  rw [targets288_eq, targets289_eq, targets290_eq, targets291_eq, targets292_eq, targets293_eq, targets294_eq, targets295_eq, targets296_eq, targets297_eq, targets298_eq, targets299_eq, targets300_eq, targets301_eq, targets302_eq, targets303_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk288_303
