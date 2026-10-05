import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData784_799
import InitE.BackendStages.FinalChunk784_799
import InitE.BackendStages.ZeroTargets784
import InitE.BackendStages.ZeroTargets785
import InitE.BackendStages.ZeroTargets786
import InitE.BackendStages.ZeroTargets787
import InitE.BackendStages.ZeroTargets788
import InitE.BackendStages.ZeroTargets789
import InitE.BackendStages.ZeroTargets790
import InitE.BackendStages.ZeroTargets791
import InitE.BackendStages.ZeroTargets792
import InitE.BackendStages.ZeroTargets793
import InitE.BackendStages.ZeroTargets794
import InitE.BackendStages.ZeroTargets795
import InitE.BackendStages.ZeroTargets796
import InitE.BackendStages.ZeroTargets797
import InitE.BackendStages.ZeroTargets798
import InitE.BackendStages.ZeroTargets799
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk784_799
theorem targets_eq : ZeroProgramCollection.targets FinalChunk784_799.padded = ZeroChunkData784_799.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded784.lines.filterMap ZeroCollection.lineTarget, Padded785.lines.filterMap ZeroCollection.lineTarget, Padded786.lines.filterMap ZeroCollection.lineTarget, Padded787.lines.filterMap ZeroCollection.lineTarget, Padded788.lines.filterMap ZeroCollection.lineTarget, Padded789.lines.filterMap ZeroCollection.lineTarget, Padded790.lines.filterMap ZeroCollection.lineTarget, Padded791.lines.filterMap ZeroCollection.lineTarget, Padded792.lines.filterMap ZeroCollection.lineTarget, Padded793.lines.filterMap ZeroCollection.lineTarget, Padded794.lines.filterMap ZeroCollection.lineTarget, Padded795.lines.filterMap ZeroCollection.lineTarget, Padded796.lines.filterMap ZeroCollection.lineTarget, Padded797.lines.filterMap ZeroCollection.lineTarget, Padded798.lines.filterMap ZeroCollection.lineTarget, Padded799.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData784_799.keys
  rw [targets784_eq, targets785_eq, targets786_eq, targets787_eq, targets788_eq, targets789_eq, targets790_eq, targets791_eq, targets792_eq, targets793_eq, targets794_eq, targets795_eq, targets796_eq, targets797_eq, targets798_eq, targets799_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk784_799
