import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData688_703
import InitE.BackendStages.FinalChunk688_703
import InitE.BackendStages.ZeroTargets688
import InitE.BackendStages.ZeroTargets689
import InitE.BackendStages.ZeroTargets690
import InitE.BackendStages.ZeroTargets691
import InitE.BackendStages.ZeroTargets692
import InitE.BackendStages.ZeroTargets693
import InitE.BackendStages.ZeroTargets694
import InitE.BackendStages.ZeroTargets695
import InitE.BackendStages.ZeroTargets696
import InitE.BackendStages.ZeroTargets697
import InitE.BackendStages.ZeroTargets698
import InitE.BackendStages.ZeroTargets699
import InitE.BackendStages.ZeroTargets700
import InitE.BackendStages.ZeroTargets701
import InitE.BackendStages.ZeroTargets702
import InitE.BackendStages.ZeroTargets703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk688_703
theorem targets_eq : ZeroProgramCollection.targets FinalChunk688_703.padded = ZeroChunkData688_703.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded688.lines.filterMap ZeroCollection.lineTarget, Padded689.lines.filterMap ZeroCollection.lineTarget, Padded690.lines.filterMap ZeroCollection.lineTarget, Padded691.lines.filterMap ZeroCollection.lineTarget, Padded692.lines.filterMap ZeroCollection.lineTarget, Padded693.lines.filterMap ZeroCollection.lineTarget, Padded694.lines.filterMap ZeroCollection.lineTarget, Padded695.lines.filterMap ZeroCollection.lineTarget, Padded696.lines.filterMap ZeroCollection.lineTarget, Padded697.lines.filterMap ZeroCollection.lineTarget, Padded698.lines.filterMap ZeroCollection.lineTarget, Padded699.lines.filterMap ZeroCollection.lineTarget, Padded700.lines.filterMap ZeroCollection.lineTarget, Padded701.lines.filterMap ZeroCollection.lineTarget, Padded702.lines.filterMap ZeroCollection.lineTarget, Padded703.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData688_703.keys
  rw [targets688_eq, targets689_eq, targets690_eq, targets691_eq, targets692_eq, targets693_eq, targets694_eq, targets695_eq, targets696_eq, targets697_eq, targets698_eq, targets699_eq, targets700_eq, targets701_eq, targets702_eq, targets703_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk688_703
