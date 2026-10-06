import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData272_287
import InitE.BackendStages.FinalChunk272_287
import InitE.BackendStages.ZeroTargets272
import InitE.BackendStages.ZeroTargets273
import InitE.BackendStages.ZeroTargets274
import InitE.BackendStages.ZeroTargets275
import InitE.BackendStages.ZeroTargets276
import InitE.BackendStages.ZeroTargets277
import InitE.BackendStages.ZeroTargets278
import InitE.BackendStages.ZeroTargets279
import InitE.BackendStages.ZeroTargets280
import InitE.BackendStages.ZeroTargets281
import InitE.BackendStages.ZeroTargets282
import InitE.BackendStages.ZeroTargets283
import InitE.BackendStages.ZeroTargets284
import InitE.BackendStages.ZeroTargets285
import InitE.BackendStages.ZeroTargets286
import InitE.BackendStages.ZeroTargets287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk272_287
theorem targets_eq : ZeroProgramCollection.targets FinalChunk272_287.padded = ZeroChunkData272_287.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded272.lines.filterMap ZeroCollection.lineTarget, Padded273.lines.filterMap ZeroCollection.lineTarget, Padded274.lines.filterMap ZeroCollection.lineTarget, Padded275.lines.filterMap ZeroCollection.lineTarget, Padded276.lines.filterMap ZeroCollection.lineTarget, Padded277.lines.filterMap ZeroCollection.lineTarget, Padded278.lines.filterMap ZeroCollection.lineTarget, Padded279.lines.filterMap ZeroCollection.lineTarget, Padded280.lines.filterMap ZeroCollection.lineTarget, Padded281.lines.filterMap ZeroCollection.lineTarget, Padded282.lines.filterMap ZeroCollection.lineTarget, Padded283.lines.filterMap ZeroCollection.lineTarget, Padded284.lines.filterMap ZeroCollection.lineTarget, Padded285.lines.filterMap ZeroCollection.lineTarget, Padded286.lines.filterMap ZeroCollection.lineTarget, Padded287.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData272_287.keys
  rw [targets272_eq, targets273_eq, targets274_eq, targets275_eq, targets276_eq, targets277_eq, targets278_eq, targets279_eq, targets280_eq, targets281_eq, targets282_eq, targets283_eq, targets284_eq, targets285_eq, targets286_eq, targets287_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk272_287
