import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData496_511
import InitE.BackendStages.FinalChunk496_511
import InitE.BackendStages.ZeroTargets496
import InitE.BackendStages.ZeroTargets497
import InitE.BackendStages.ZeroTargets498
import InitE.BackendStages.ZeroTargets499
import InitE.BackendStages.ZeroTargets500
import InitE.BackendStages.ZeroTargets501
import InitE.BackendStages.ZeroTargets502
import InitE.BackendStages.ZeroTargets503
import InitE.BackendStages.ZeroTargets504
import InitE.BackendStages.ZeroTargets505
import InitE.BackendStages.ZeroTargets506
import InitE.BackendStages.ZeroTargets507
import InitE.BackendStages.ZeroTargets508
import InitE.BackendStages.ZeroTargets509
import InitE.BackendStages.ZeroTargets510
import InitE.BackendStages.ZeroTargets511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk496_511
theorem targets_eq : ZeroProgramCollection.targets FinalChunk496_511.padded = ZeroChunkData496_511.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded496.lines.filterMap ZeroCollection.lineTarget, Padded497.lines.filterMap ZeroCollection.lineTarget, Padded498.lines.filterMap ZeroCollection.lineTarget, Padded499.lines.filterMap ZeroCollection.lineTarget, Padded500.lines.filterMap ZeroCollection.lineTarget, Padded501.lines.filterMap ZeroCollection.lineTarget, Padded502.lines.filterMap ZeroCollection.lineTarget, Padded503.lines.filterMap ZeroCollection.lineTarget, Padded504.lines.filterMap ZeroCollection.lineTarget, Padded505.lines.filterMap ZeroCollection.lineTarget, Padded506.lines.filterMap ZeroCollection.lineTarget, Padded507.lines.filterMap ZeroCollection.lineTarget, Padded508.lines.filterMap ZeroCollection.lineTarget, Padded509.lines.filterMap ZeroCollection.lineTarget, Padded510.lines.filterMap ZeroCollection.lineTarget, Padded511.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData496_511.keys
  rw [targets496_eq, targets497_eq, targets498_eq, targets499_eq, targets500_eq, targets501_eq, targets502_eq, targets503_eq, targets504_eq, targets505_eq, targets506_eq, targets507_eq, targets508_eq, targets509_eq, targets510_eq, targets511_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk496_511
