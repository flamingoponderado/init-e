import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData848_863
import InitE.BackendStages.FinalChunk848_863
import InitE.BackendStages.ZeroTargets848
import InitE.BackendStages.ZeroTargets849
import InitE.BackendStages.ZeroTargets850
import InitE.BackendStages.ZeroTargets851
import InitE.BackendStages.ZeroTargets852
import InitE.BackendStages.ZeroTargets853
import InitE.BackendStages.ZeroTargets854
import InitE.BackendStages.ZeroTargets855
import InitE.BackendStages.ZeroTargets856
import InitE.BackendStages.ZeroTargets857
import InitE.BackendStages.ZeroTargets858
import InitE.BackendStages.ZeroTargets859
import InitE.BackendStages.ZeroTargets860
import InitE.BackendStages.ZeroTargets861
import InitE.BackendStages.ZeroTargets862
import InitE.BackendStages.ZeroTargets863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk848_863
theorem targets_eq : ZeroProgramCollection.targets FinalChunk848_863.padded = ZeroChunkData848_863.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded848.lines.filterMap ZeroCollection.lineTarget, Padded849.lines.filterMap ZeroCollection.lineTarget, Padded850.lines.filterMap ZeroCollection.lineTarget, Padded851.lines.filterMap ZeroCollection.lineTarget, Padded852.lines.filterMap ZeroCollection.lineTarget, Padded853.lines.filterMap ZeroCollection.lineTarget, Padded854.lines.filterMap ZeroCollection.lineTarget, Padded855.lines.filterMap ZeroCollection.lineTarget, Padded856.lines.filterMap ZeroCollection.lineTarget, Padded857.lines.filterMap ZeroCollection.lineTarget, Padded858.lines.filterMap ZeroCollection.lineTarget, Padded859.lines.filterMap ZeroCollection.lineTarget, Padded860.lines.filterMap ZeroCollection.lineTarget, Padded861.lines.filterMap ZeroCollection.lineTarget, Padded862.lines.filterMap ZeroCollection.lineTarget, Padded863.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData848_863.keys
  rw [targets848_eq, targets849_eq, targets850_eq, targets851_eq, targets852_eq, targets853_eq, targets854_eq, targets855_eq, targets856_eq, targets857_eq, targets858_eq, targets859_eq, targets860_eq, targets861_eq, targets862_eq, targets863_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk848_863
