import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData224_239
import InitE.BackendStages.FinalChunk224_239
import InitE.BackendStages.ZeroTargets224
import InitE.BackendStages.ZeroTargets225
import InitE.BackendStages.ZeroTargets226
import InitE.BackendStages.ZeroTargets227
import InitE.BackendStages.ZeroTargets228
import InitE.BackendStages.ZeroTargets229
import InitE.BackendStages.ZeroTargets230
import InitE.BackendStages.ZeroTargets231
import InitE.BackendStages.ZeroTargets232
import InitE.BackendStages.ZeroTargets233
import InitE.BackendStages.ZeroTargets234
import InitE.BackendStages.ZeroTargets235
import InitE.BackendStages.ZeroTargets236
import InitE.BackendStages.ZeroTargets237
import InitE.BackendStages.ZeroTargets238
import InitE.BackendStages.ZeroTargets239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk224_239
theorem targets_eq : ZeroProgramCollection.targets FinalChunk224_239.padded = ZeroChunkData224_239.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded224.lines.filterMap ZeroCollection.lineTarget, Padded225.lines.filterMap ZeroCollection.lineTarget, Padded226.lines.filterMap ZeroCollection.lineTarget, Padded227.lines.filterMap ZeroCollection.lineTarget, Padded228.lines.filterMap ZeroCollection.lineTarget, Padded229.lines.filterMap ZeroCollection.lineTarget, Padded230.lines.filterMap ZeroCollection.lineTarget, Padded231.lines.filterMap ZeroCollection.lineTarget, Padded232.lines.filterMap ZeroCollection.lineTarget, Padded233.lines.filterMap ZeroCollection.lineTarget, Padded234.lines.filterMap ZeroCollection.lineTarget, Padded235.lines.filterMap ZeroCollection.lineTarget, Padded236.lines.filterMap ZeroCollection.lineTarget, Padded237.lines.filterMap ZeroCollection.lineTarget, Padded238.lines.filterMap ZeroCollection.lineTarget, Padded239.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData224_239.keys
  rw [targets224_eq, targets225_eq, targets226_eq, targets227_eq, targets228_eq, targets229_eq, targets230_eq, targets231_eq, targets232_eq, targets233_eq, targets234_eq, targets235_eq, targets236_eq, targets237_eq, targets238_eq, targets239_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk224_239
