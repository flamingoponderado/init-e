import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData96_111
import InitE.BackendStages.FinalChunk96_111
import InitE.BackendStages.ZeroTargets96
import InitE.BackendStages.ZeroTargets97
import InitE.BackendStages.ZeroTargets98
import InitE.BackendStages.ZeroTargets99
import InitE.BackendStages.ZeroTargets100
import InitE.BackendStages.ZeroTargets101
import InitE.BackendStages.ZeroTargets102
import InitE.BackendStages.ZeroTargets103
import InitE.BackendStages.ZeroTargets104
import InitE.BackendStages.ZeroTargets105
import InitE.BackendStages.ZeroTargets106
import InitE.BackendStages.ZeroTargets107
import InitE.BackendStages.ZeroTargets108
import InitE.BackendStages.ZeroTargets109
import InitE.BackendStages.ZeroTargets110
import InitE.BackendStages.ZeroTargets111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk96_111
theorem targets_eq : ZeroProgramCollection.targets FinalChunk96_111.padded = ZeroChunkData96_111.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded96.lines.filterMap ZeroCollection.lineTarget, Padded97.lines.filterMap ZeroCollection.lineTarget, Padded98.lines.filterMap ZeroCollection.lineTarget, Padded99.lines.filterMap ZeroCollection.lineTarget, Padded100.lines.filterMap ZeroCollection.lineTarget, Padded101.lines.filterMap ZeroCollection.lineTarget, Padded102.lines.filterMap ZeroCollection.lineTarget, Padded103.lines.filterMap ZeroCollection.lineTarget, Padded104.lines.filterMap ZeroCollection.lineTarget, Padded105.lines.filterMap ZeroCollection.lineTarget, Padded106.lines.filterMap ZeroCollection.lineTarget, Padded107.lines.filterMap ZeroCollection.lineTarget, Padded108.lines.filterMap ZeroCollection.lineTarget, Padded109.lines.filterMap ZeroCollection.lineTarget, Padded110.lines.filterMap ZeroCollection.lineTarget, Padded111.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData96_111.keys
  rw [targets96_eq, targets97_eq, targets98_eq, targets99_eq, targets100_eq, targets101_eq, targets102_eq, targets103_eq, targets104_eq, targets105_eq, targets106_eq, targets107_eq, targets108_eq, targets109_eq, targets110_eq, targets111_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk96_111
