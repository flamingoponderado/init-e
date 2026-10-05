import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData80_95
import InitE.BackendStages.FinalChunk80_95
import InitE.BackendStages.ZeroTargets80
import InitE.BackendStages.ZeroTargets81
import InitE.BackendStages.ZeroTargets82
import InitE.BackendStages.ZeroTargets83
import InitE.BackendStages.ZeroTargets84
import InitE.BackendStages.ZeroTargets85
import InitE.BackendStages.ZeroTargets86
import InitE.BackendStages.ZeroTargets87
import InitE.BackendStages.ZeroTargets88
import InitE.BackendStages.ZeroTargets89
import InitE.BackendStages.ZeroTargets90
import InitE.BackendStages.ZeroTargets91
import InitE.BackendStages.ZeroTargets92
import InitE.BackendStages.ZeroTargets93
import InitE.BackendStages.ZeroTargets94
import InitE.BackendStages.ZeroTargets95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk80_95
theorem targets_eq : ZeroProgramCollection.targets FinalChunk80_95.padded = ZeroChunkData80_95.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded80.lines.filterMap ZeroCollection.lineTarget, Padded81.lines.filterMap ZeroCollection.lineTarget, Padded82.lines.filterMap ZeroCollection.lineTarget, Padded83.lines.filterMap ZeroCollection.lineTarget, Padded84.lines.filterMap ZeroCollection.lineTarget, Padded85.lines.filterMap ZeroCollection.lineTarget, Padded86.lines.filterMap ZeroCollection.lineTarget, Padded87.lines.filterMap ZeroCollection.lineTarget, Padded88.lines.filterMap ZeroCollection.lineTarget, Padded89.lines.filterMap ZeroCollection.lineTarget, Padded90.lines.filterMap ZeroCollection.lineTarget, Padded91.lines.filterMap ZeroCollection.lineTarget, Padded92.lines.filterMap ZeroCollection.lineTarget, Padded93.lines.filterMap ZeroCollection.lineTarget, Padded94.lines.filterMap ZeroCollection.lineTarget, Padded95.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData80_95.keys
  rw [targets80_eq, targets81_eq, targets82_eq, targets83_eq, targets84_eq, targets85_eq, targets86_eq, targets87_eq, targets88_eq, targets89_eq, targets90_eq, targets91_eq, targets92_eq, targets93_eq, targets94_eq, targets95_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk80_95
