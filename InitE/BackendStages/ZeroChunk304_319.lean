import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData304_319
import InitE.BackendStages.FinalChunk304_319
import InitE.BackendStages.ZeroTargets304
import InitE.BackendStages.ZeroTargets305
import InitE.BackendStages.ZeroTargets306
import InitE.BackendStages.ZeroTargets307
import InitE.BackendStages.ZeroTargets308
import InitE.BackendStages.ZeroTargets309
import InitE.BackendStages.ZeroTargets310
import InitE.BackendStages.ZeroTargets311
import InitE.BackendStages.ZeroTargets312
import InitE.BackendStages.ZeroTargets313
import InitE.BackendStages.ZeroTargets314
import InitE.BackendStages.ZeroTargets315
import InitE.BackendStages.ZeroTargets316
import InitE.BackendStages.ZeroTargets317
import InitE.BackendStages.ZeroTargets318
import InitE.BackendStages.ZeroTargets319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk304_319
theorem targets_eq : ZeroProgramCollection.targets FinalChunk304_319.padded = ZeroChunkData304_319.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded304.lines.filterMap ZeroCollection.lineTarget, Padded305.lines.filterMap ZeroCollection.lineTarget, Padded306.lines.filterMap ZeroCollection.lineTarget, Padded307.lines.filterMap ZeroCollection.lineTarget, Padded308.lines.filterMap ZeroCollection.lineTarget, Padded309.lines.filterMap ZeroCollection.lineTarget, Padded310.lines.filterMap ZeroCollection.lineTarget, Padded311.lines.filterMap ZeroCollection.lineTarget, Padded312.lines.filterMap ZeroCollection.lineTarget, Padded313.lines.filterMap ZeroCollection.lineTarget, Padded314.lines.filterMap ZeroCollection.lineTarget, Padded315.lines.filterMap ZeroCollection.lineTarget, Padded316.lines.filterMap ZeroCollection.lineTarget, Padded317.lines.filterMap ZeroCollection.lineTarget, Padded318.lines.filterMap ZeroCollection.lineTarget, Padded319.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData304_319.keys
  rw [targets304_eq, targets305_eq, targets306_eq, targets307_eq, targets308_eq, targets309_eq, targets310_eq, targets311_eq, targets312_eq, targets313_eq, targets314_eq, targets315_eq, targets316_eq, targets317_eq, targets318_eq, targets319_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk304_319
