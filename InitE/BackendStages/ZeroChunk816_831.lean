import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData816_831
import InitE.BackendStages.FinalChunk816_831
import InitE.BackendStages.ZeroTargets816
import InitE.BackendStages.ZeroTargets817
import InitE.BackendStages.ZeroTargets818
import InitE.BackendStages.ZeroTargets819
import InitE.BackendStages.ZeroTargets820
import InitE.BackendStages.ZeroTargets821
import InitE.BackendStages.ZeroTargets822
import InitE.BackendStages.ZeroTargets823
import InitE.BackendStages.ZeroTargets824
import InitE.BackendStages.ZeroTargets825
import InitE.BackendStages.ZeroTargets826
import InitE.BackendStages.ZeroTargets827
import InitE.BackendStages.ZeroTargets828
import InitE.BackendStages.ZeroTargets829
import InitE.BackendStages.ZeroTargets830
import InitE.BackendStages.ZeroTargets831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk816_831
theorem targets_eq : ZeroProgramCollection.targets FinalChunk816_831.padded = ZeroChunkData816_831.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded816.lines.filterMap ZeroCollection.lineTarget, Padded817.lines.filterMap ZeroCollection.lineTarget, Padded818.lines.filterMap ZeroCollection.lineTarget, Padded819.lines.filterMap ZeroCollection.lineTarget, Padded820.lines.filterMap ZeroCollection.lineTarget, Padded821.lines.filterMap ZeroCollection.lineTarget, Padded822.lines.filterMap ZeroCollection.lineTarget, Padded823.lines.filterMap ZeroCollection.lineTarget, Padded824.lines.filterMap ZeroCollection.lineTarget, Padded825.lines.filterMap ZeroCollection.lineTarget, Padded826.lines.filterMap ZeroCollection.lineTarget, Padded827.lines.filterMap ZeroCollection.lineTarget, Padded828.lines.filterMap ZeroCollection.lineTarget, Padded829.lines.filterMap ZeroCollection.lineTarget, Padded830.lines.filterMap ZeroCollection.lineTarget, Padded831.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData816_831.keys
  rw [targets816_eq, targets817_eq, targets818_eq, targets819_eq, targets820_eq, targets821_eq, targets822_eq, targets823_eq, targets824_eq, targets825_eq, targets826_eq, targets827_eq, targets828_eq, targets829_eq, targets830_eq, targets831_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk816_831
