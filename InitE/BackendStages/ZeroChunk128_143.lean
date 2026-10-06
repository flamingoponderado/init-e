import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData128_143
import InitE.BackendStages.FinalChunk128_143
import InitE.BackendStages.ZeroTargets128
import InitE.BackendStages.ZeroTargets129
import InitE.BackendStages.ZeroTargets130
import InitE.BackendStages.ZeroTargets131
import InitE.BackendStages.ZeroTargets132
import InitE.BackendStages.ZeroTargets133
import InitE.BackendStages.ZeroTargets134
import InitE.BackendStages.ZeroTargets135
import InitE.BackendStages.ZeroTargets136
import InitE.BackendStages.ZeroTargets137
import InitE.BackendStages.ZeroTargets138
import InitE.BackendStages.ZeroTargets139
import InitE.BackendStages.ZeroTargets140
import InitE.BackendStages.ZeroTargets141
import InitE.BackendStages.ZeroTargets142
import InitE.BackendStages.ZeroTargets143
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk128_143
theorem targets_eq : ZeroProgramCollection.targets FinalChunk128_143.padded = ZeroChunkData128_143.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded128.lines.filterMap ZeroCollection.lineTarget, Padded129.lines.filterMap ZeroCollection.lineTarget, Padded130.lines.filterMap ZeroCollection.lineTarget, Padded131.lines.filterMap ZeroCollection.lineTarget, Padded132.lines.filterMap ZeroCollection.lineTarget, Padded133.lines.filterMap ZeroCollection.lineTarget, Padded134.lines.filterMap ZeroCollection.lineTarget, Padded135.lines.filterMap ZeroCollection.lineTarget, Padded136.lines.filterMap ZeroCollection.lineTarget, Padded137.lines.filterMap ZeroCollection.lineTarget, Padded138.lines.filterMap ZeroCollection.lineTarget, Padded139.lines.filterMap ZeroCollection.lineTarget, Padded140.lines.filterMap ZeroCollection.lineTarget, Padded141.lines.filterMap ZeroCollection.lineTarget, Padded142.lines.filterMap ZeroCollection.lineTarget, Padded143.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData128_143.keys
  rw [targets128_eq, targets129_eq, targets130_eq, targets131_eq, targets132_eq, targets133_eq, targets134_eq, targets135_eq, targets136_eq, targets137_eq, targets138_eq, targets139_eq, targets140_eq, targets141_eq, targets142_eq, targets143_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk128_143
