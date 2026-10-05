import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData736_751
import InitE.BackendStages.FinalChunk736_751
import InitE.BackendStages.ZeroTargets736
import InitE.BackendStages.ZeroTargets737
import InitE.BackendStages.ZeroTargets738
import InitE.BackendStages.ZeroTargets739
import InitE.BackendStages.ZeroTargets740
import InitE.BackendStages.ZeroTargets741
import InitE.BackendStages.ZeroTargets742
import InitE.BackendStages.ZeroTargets743
import InitE.BackendStages.ZeroTargets744
import InitE.BackendStages.ZeroTargets745
import InitE.BackendStages.ZeroTargets746
import InitE.BackendStages.ZeroTargets747
import InitE.BackendStages.ZeroTargets748
import InitE.BackendStages.ZeroTargets749
import InitE.BackendStages.ZeroTargets750
import InitE.BackendStages.ZeroTargets751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk736_751
theorem targets_eq : ZeroProgramCollection.targets FinalChunk736_751.padded = ZeroChunkData736_751.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded736.lines.filterMap ZeroCollection.lineTarget, Padded737.lines.filterMap ZeroCollection.lineTarget, Padded738.lines.filterMap ZeroCollection.lineTarget, Padded739.lines.filterMap ZeroCollection.lineTarget, Padded740.lines.filterMap ZeroCollection.lineTarget, Padded741.lines.filterMap ZeroCollection.lineTarget, Padded742.lines.filterMap ZeroCollection.lineTarget, Padded743.lines.filterMap ZeroCollection.lineTarget, Padded744.lines.filterMap ZeroCollection.lineTarget, Padded745.lines.filterMap ZeroCollection.lineTarget, Padded746.lines.filterMap ZeroCollection.lineTarget, Padded747.lines.filterMap ZeroCollection.lineTarget, Padded748.lines.filterMap ZeroCollection.lineTarget, Padded749.lines.filterMap ZeroCollection.lineTarget, Padded750.lines.filterMap ZeroCollection.lineTarget, Padded751.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData736_751.keys
  rw [targets736_eq, targets737_eq, targets738_eq, targets739_eq, targets740_eq, targets741_eq, targets742_eq, targets743_eq, targets744_eq, targets745_eq, targets746_eq, targets747_eq, targets748_eq, targets749_eq, targets750_eq, targets751_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk736_751
