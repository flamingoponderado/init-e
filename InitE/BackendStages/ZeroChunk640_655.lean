import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData640_655
import InitE.BackendStages.FinalChunk640_655
import InitE.BackendStages.ZeroTargets640
import InitE.BackendStages.ZeroTargets641
import InitE.BackendStages.ZeroTargets642
import InitE.BackendStages.ZeroTargets643
import InitE.BackendStages.ZeroTargets644
import InitE.BackendStages.ZeroTargets645
import InitE.BackendStages.ZeroTargets646
import InitE.BackendStages.ZeroTargets647
import InitE.BackendStages.ZeroTargets648
import InitE.BackendStages.ZeroTargets649
import InitE.BackendStages.ZeroTargets650
import InitE.BackendStages.ZeroTargets651
import InitE.BackendStages.ZeroTargets652
import InitE.BackendStages.ZeroTargets653
import InitE.BackendStages.ZeroTargets654
import InitE.BackendStages.ZeroTargets655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk640_655
theorem targets_eq : ZeroProgramCollection.targets FinalChunk640_655.padded = ZeroChunkData640_655.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded640.lines.filterMap ZeroCollection.lineTarget, Padded641.lines.filterMap ZeroCollection.lineTarget, Padded642.lines.filterMap ZeroCollection.lineTarget, Padded643.lines.filterMap ZeroCollection.lineTarget, Padded644.lines.filterMap ZeroCollection.lineTarget, Padded645.lines.filterMap ZeroCollection.lineTarget, Padded646.lines.filterMap ZeroCollection.lineTarget, Padded647.lines.filterMap ZeroCollection.lineTarget, Padded648.lines.filterMap ZeroCollection.lineTarget, Padded649.lines.filterMap ZeroCollection.lineTarget, Padded650.lines.filterMap ZeroCollection.lineTarget, Padded651.lines.filterMap ZeroCollection.lineTarget, Padded652.lines.filterMap ZeroCollection.lineTarget, Padded653.lines.filterMap ZeroCollection.lineTarget, Padded654.lines.filterMap ZeroCollection.lineTarget, Padded655.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData640_655.keys
  rw [targets640_eq, targets641_eq, targets642_eq, targets643_eq, targets644_eq, targets645_eq, targets646_eq, targets647_eq, targets648_eq, targets649_eq, targets650_eq, targets651_eq, targets652_eq, targets653_eq, targets654_eq, targets655_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk640_655
