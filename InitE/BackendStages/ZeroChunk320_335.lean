import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData320_335
import InitE.BackendStages.FinalChunk320_335
import InitE.BackendStages.ZeroTargets320
import InitE.BackendStages.ZeroTargets321
import InitE.BackendStages.ZeroTargets322
import InitE.BackendStages.ZeroTargets323
import InitE.BackendStages.ZeroTargets324
import InitE.BackendStages.ZeroTargets325
import InitE.BackendStages.ZeroTargets326
import InitE.BackendStages.ZeroTargets327
import InitE.BackendStages.ZeroTargets328
import InitE.BackendStages.ZeroTargets329
import InitE.BackendStages.ZeroTargets330
import InitE.BackendStages.ZeroTargets331
import InitE.BackendStages.ZeroTargets332
import InitE.BackendStages.ZeroTargets333
import InitE.BackendStages.ZeroTargets334
import InitE.BackendStages.ZeroTargets335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk320_335
theorem targets_eq : ZeroProgramCollection.targets FinalChunk320_335.padded = ZeroChunkData320_335.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded320.lines.filterMap ZeroCollection.lineTarget, Padded321.lines.filterMap ZeroCollection.lineTarget, Padded322.lines.filterMap ZeroCollection.lineTarget, Padded323.lines.filterMap ZeroCollection.lineTarget, Padded324.lines.filterMap ZeroCollection.lineTarget, Padded325.lines.filterMap ZeroCollection.lineTarget, Padded326.lines.filterMap ZeroCollection.lineTarget, Padded327.lines.filterMap ZeroCollection.lineTarget, Padded328.lines.filterMap ZeroCollection.lineTarget, Padded329.lines.filterMap ZeroCollection.lineTarget, Padded330.lines.filterMap ZeroCollection.lineTarget, Padded331.lines.filterMap ZeroCollection.lineTarget, Padded332.lines.filterMap ZeroCollection.lineTarget, Padded333.lines.filterMap ZeroCollection.lineTarget, Padded334.lines.filterMap ZeroCollection.lineTarget, Padded335.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData320_335.keys
  rw [targets320_eq, targets321_eq, targets322_eq, targets323_eq, targets324_eq, targets325_eq, targets326_eq, targets327_eq, targets328_eq, targets329_eq, targets330_eq, targets331_eq, targets332_eq, targets333_eq, targets334_eq, targets335_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk320_335
