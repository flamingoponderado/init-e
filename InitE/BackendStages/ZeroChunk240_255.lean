import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData240_255
import InitE.BackendStages.FinalChunk240_255
import InitE.BackendStages.ZeroTargets240
import InitE.BackendStages.ZeroTargets241
import InitE.BackendStages.ZeroTargets242
import InitE.BackendStages.ZeroTargets243
import InitE.BackendStages.ZeroTargets244
import InitE.BackendStages.ZeroTargets245
import InitE.BackendStages.ZeroTargets246
import InitE.BackendStages.ZeroTargets247
import InitE.BackendStages.ZeroTargets248
import InitE.BackendStages.ZeroTargets249
import InitE.BackendStages.ZeroTargets250
import InitE.BackendStages.ZeroTargets251
import InitE.BackendStages.ZeroTargets252
import InitE.BackendStages.ZeroTargets253
import InitE.BackendStages.ZeroTargets254
import InitE.BackendStages.ZeroTargets255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk240_255
theorem targets_eq : ZeroProgramCollection.targets FinalChunk240_255.padded = ZeroChunkData240_255.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded240.lines.filterMap ZeroCollection.lineTarget, Padded241.lines.filterMap ZeroCollection.lineTarget, Padded242.lines.filterMap ZeroCollection.lineTarget, Padded243.lines.filterMap ZeroCollection.lineTarget, Padded244.lines.filterMap ZeroCollection.lineTarget, Padded245.lines.filterMap ZeroCollection.lineTarget, Padded246.lines.filterMap ZeroCollection.lineTarget, Padded247.lines.filterMap ZeroCollection.lineTarget, Padded248.lines.filterMap ZeroCollection.lineTarget, Padded249.lines.filterMap ZeroCollection.lineTarget, Padded250.lines.filterMap ZeroCollection.lineTarget, Padded251.lines.filterMap ZeroCollection.lineTarget, Padded252.lines.filterMap ZeroCollection.lineTarget, Padded253.lines.filterMap ZeroCollection.lineTarget, Padded254.lines.filterMap ZeroCollection.lineTarget, Padded255.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData240_255.keys
  rw [targets240_eq, targets241_eq, targets242_eq, targets243_eq, targets244_eq, targets245_eq, targets246_eq, targets247_eq, targets248_eq, targets249_eq, targets250_eq, targets251_eq, targets252_eq, targets253_eq, targets254_eq, targets255_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk240_255
