import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData864_879
import InitE.BackendStages.FinalChunk864_879
import InitE.BackendStages.ZeroTargets864
import InitE.BackendStages.ZeroTargets865
import InitE.BackendStages.ZeroTargets866
import InitE.BackendStages.ZeroTargets867
import InitE.BackendStages.ZeroTargets868
import InitE.BackendStages.ZeroTargets869
import InitE.BackendStages.ZeroTargets870
import InitE.BackendStages.ZeroTargets871
import InitE.BackendStages.ZeroTargets872
import InitE.BackendStages.ZeroTargets873
import InitE.BackendStages.ZeroTargets874
import InitE.BackendStages.ZeroTargets875
import InitE.BackendStages.ZeroTargets876
import InitE.BackendStages.ZeroTargets877
import InitE.BackendStages.ZeroTargets878
import InitE.BackendStages.ZeroTargets879
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk864_879
theorem targets_eq : ZeroProgramCollection.targets FinalChunk864_879.padded = ZeroChunkData864_879.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded864.lines.filterMap ZeroCollection.lineTarget, Padded865.lines.filterMap ZeroCollection.lineTarget, Padded866.lines.filterMap ZeroCollection.lineTarget, Padded867.lines.filterMap ZeroCollection.lineTarget, Padded868.lines.filterMap ZeroCollection.lineTarget, Padded869.lines.filterMap ZeroCollection.lineTarget, Padded870.lines.filterMap ZeroCollection.lineTarget, Padded871.lines.filterMap ZeroCollection.lineTarget, Padded872.lines.filterMap ZeroCollection.lineTarget, Padded873.lines.filterMap ZeroCollection.lineTarget, Padded874.lines.filterMap ZeroCollection.lineTarget, Padded875.lines.filterMap ZeroCollection.lineTarget, Padded876.lines.filterMap ZeroCollection.lineTarget, Padded877.lines.filterMap ZeroCollection.lineTarget, Padded878.lines.filterMap ZeroCollection.lineTarget, Padded879.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData864_879.keys
  rw [targets864_eq, targets865_eq, targets866_eq, targets867_eq, targets868_eq, targets869_eq, targets870_eq, targets871_eq, targets872_eq, targets873_eq, targets874_eq, targets875_eq, targets876_eq, targets877_eq, targets878_eq, targets879_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk864_879
