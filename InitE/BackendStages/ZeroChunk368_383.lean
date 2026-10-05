import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData368_383
import InitE.BackendStages.FinalChunk368_383
import InitE.BackendStages.ZeroTargets368
import InitE.BackendStages.ZeroTargets369
import InitE.BackendStages.ZeroTargets370
import InitE.BackendStages.ZeroTargets371
import InitE.BackendStages.ZeroTargets372
import InitE.BackendStages.ZeroTargets373
import InitE.BackendStages.ZeroTargets374
import InitE.BackendStages.ZeroTargets375
import InitE.BackendStages.ZeroTargets376
import InitE.BackendStages.ZeroTargets377
import InitE.BackendStages.ZeroTargets378
import InitE.BackendStages.ZeroTargets379
import InitE.BackendStages.ZeroTargets380
import InitE.BackendStages.ZeroTargets381
import InitE.BackendStages.ZeroTargets382
import InitE.BackendStages.ZeroTargets383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk368_383
theorem targets_eq : ZeroProgramCollection.targets FinalChunk368_383.padded = ZeroChunkData368_383.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded368.lines.filterMap ZeroCollection.lineTarget, Padded369.lines.filterMap ZeroCollection.lineTarget, Padded370.lines.filterMap ZeroCollection.lineTarget, Padded371.lines.filterMap ZeroCollection.lineTarget, Padded372.lines.filterMap ZeroCollection.lineTarget, Padded373.lines.filterMap ZeroCollection.lineTarget, Padded374.lines.filterMap ZeroCollection.lineTarget, Padded375.lines.filterMap ZeroCollection.lineTarget, Padded376.lines.filterMap ZeroCollection.lineTarget, Padded377.lines.filterMap ZeroCollection.lineTarget, Padded378.lines.filterMap ZeroCollection.lineTarget, Padded379.lines.filterMap ZeroCollection.lineTarget, Padded380.lines.filterMap ZeroCollection.lineTarget, Padded381.lines.filterMap ZeroCollection.lineTarget, Padded382.lines.filterMap ZeroCollection.lineTarget, Padded383.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData368_383.keys
  rw [targets368_eq, targets369_eq, targets370_eq, targets371_eq, targets372_eq, targets373_eq, targets374_eq, targets375_eq, targets376_eq, targets377_eq, targets378_eq, targets379_eq, targets380_eq, targets381_eq, targets382_eq, targets383_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk368_383
