import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData144_159
import InitE.BackendStages.FinalChunk144_159
import InitE.BackendStages.ZeroTargets144
import InitE.BackendStages.ZeroTargets145
import InitE.BackendStages.ZeroTargets146
import InitE.BackendStages.ZeroTargets147
import InitE.BackendStages.ZeroTargets148
import InitE.BackendStages.ZeroTargets149
import InitE.BackendStages.ZeroTargets150
import InitE.BackendStages.ZeroTargets151
import InitE.BackendStages.ZeroTargets152
import InitE.BackendStages.ZeroTargets153
import InitE.BackendStages.ZeroTargets154
import InitE.BackendStages.ZeroTargets155
import InitE.BackendStages.ZeroTargets156
import InitE.BackendStages.ZeroTargets157
import InitE.BackendStages.ZeroTargets158
import InitE.BackendStages.ZeroTargets159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk144_159
theorem targets_eq : ZeroProgramCollection.targets FinalChunk144_159.padded = ZeroChunkData144_159.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded144.lines.filterMap ZeroCollection.lineTarget, Padded145.lines.filterMap ZeroCollection.lineTarget, Padded146.lines.filterMap ZeroCollection.lineTarget, Padded147.lines.filterMap ZeroCollection.lineTarget, Padded148.lines.filterMap ZeroCollection.lineTarget, Padded149.lines.filterMap ZeroCollection.lineTarget, Padded150.lines.filterMap ZeroCollection.lineTarget, Padded151.lines.filterMap ZeroCollection.lineTarget, Padded152.lines.filterMap ZeroCollection.lineTarget, Padded153.lines.filterMap ZeroCollection.lineTarget, Padded154.lines.filterMap ZeroCollection.lineTarget, Padded155.lines.filterMap ZeroCollection.lineTarget, Padded156.lines.filterMap ZeroCollection.lineTarget, Padded157.lines.filterMap ZeroCollection.lineTarget, Padded158.lines.filterMap ZeroCollection.lineTarget, Padded159.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData144_159.keys
  rw [targets144_eq, targets145_eq, targets146_eq, targets147_eq, targets148_eq, targets149_eq, targets150_eq, targets151_eq, targets152_eq, targets153_eq, targets154_eq, targets155_eq, targets156_eq, targets157_eq, targets158_eq, targets159_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk144_159
