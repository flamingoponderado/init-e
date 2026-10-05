import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData832_847
import InitE.BackendStages.FinalChunk832_847
import InitE.BackendStages.ZeroTargets832
import InitE.BackendStages.ZeroTargets833
import InitE.BackendStages.ZeroTargets834
import InitE.BackendStages.ZeroTargets835
import InitE.BackendStages.ZeroTargets836
import InitE.BackendStages.ZeroTargets837
import InitE.BackendStages.ZeroTargets838
import InitE.BackendStages.ZeroTargets839
import InitE.BackendStages.ZeroTargets840
import InitE.BackendStages.ZeroTargets841
import InitE.BackendStages.ZeroTargets842
import InitE.BackendStages.ZeroTargets843
import InitE.BackendStages.ZeroTargets844
import InitE.BackendStages.ZeroTargets845
import InitE.BackendStages.ZeroTargets846
import InitE.BackendStages.ZeroTargets847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk832_847
theorem targets_eq : ZeroProgramCollection.targets FinalChunk832_847.padded = ZeroChunkData832_847.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded832.lines.filterMap ZeroCollection.lineTarget, Padded833.lines.filterMap ZeroCollection.lineTarget, Padded834.lines.filterMap ZeroCollection.lineTarget, Padded835.lines.filterMap ZeroCollection.lineTarget, Padded836.lines.filterMap ZeroCollection.lineTarget, Padded837.lines.filterMap ZeroCollection.lineTarget, Padded838.lines.filterMap ZeroCollection.lineTarget, Padded839.lines.filterMap ZeroCollection.lineTarget, Padded840.lines.filterMap ZeroCollection.lineTarget, Padded841.lines.filterMap ZeroCollection.lineTarget, Padded842.lines.filterMap ZeroCollection.lineTarget, Padded843.lines.filterMap ZeroCollection.lineTarget, Padded844.lines.filterMap ZeroCollection.lineTarget, Padded845.lines.filterMap ZeroCollection.lineTarget, Padded846.lines.filterMap ZeroCollection.lineTarget, Padded847.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData832_847.keys
  rw [targets832_eq, targets833_eq, targets834_eq, targets835_eq, targets836_eq, targets837_eq, targets838_eq, targets839_eq, targets840_eq, targets841_eq, targets842_eq, targets843_eq, targets844_eq, targets845_eq, targets846_eq, targets847_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk832_847
