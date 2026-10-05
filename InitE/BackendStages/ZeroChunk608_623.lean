import InitE.BackendStages.ZeroProgramCollection
import InitE.BackendStages.ZeroChunkData608_623
import InitE.BackendStages.FinalChunk608_623
import InitE.BackendStages.ZeroTargets608
import InitE.BackendStages.ZeroTargets609
import InitE.BackendStages.ZeroTargets610
import InitE.BackendStages.ZeroTargets611
import InitE.BackendStages.ZeroTargets612
import InitE.BackendStages.ZeroTargets613
import InitE.BackendStages.ZeroTargets614
import InitE.BackendStages.ZeroTargets615
import InitE.BackendStages.ZeroTargets616
import InitE.BackendStages.ZeroTargets617
import InitE.BackendStages.ZeroTargets618
import InitE.BackendStages.ZeroTargets619
import InitE.BackendStages.ZeroTargets620
import InitE.BackendStages.ZeroTargets621
import InitE.BackendStages.ZeroTargets622
import InitE.BackendStages.ZeroTargets623
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ZeroChunk608_623
theorem targets_eq : ZeroProgramCollection.targets FinalChunk608_623.padded = ZeroChunkData608_623.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded608.lines.filterMap ZeroCollection.lineTarget, Padded609.lines.filterMap ZeroCollection.lineTarget, Padded610.lines.filterMap ZeroCollection.lineTarget, Padded611.lines.filterMap ZeroCollection.lineTarget, Padded612.lines.filterMap ZeroCollection.lineTarget, Padded613.lines.filterMap ZeroCollection.lineTarget, Padded614.lines.filterMap ZeroCollection.lineTarget, Padded615.lines.filterMap ZeroCollection.lineTarget, Padded616.lines.filterMap ZeroCollection.lineTarget, Padded617.lines.filterMap ZeroCollection.lineTarget, Padded618.lines.filterMap ZeroCollection.lineTarget, Padded619.lines.filterMap ZeroCollection.lineTarget, Padded620.lines.filterMap ZeroCollection.lineTarget, Padded621.lines.filterMap ZeroCollection.lineTarget, Padded622.lines.filterMap ZeroCollection.lineTarget, Padded623.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData608_623.keys
  rw [targets608_eq, targets609_eq, targets610_eq, targets611_eq, targets612_eq, targets613_eq, targets614_eq, targets615_eq, targets616_eq, targets617_eq, targets618_eq, targets619_eq, targets620_eq, targets621_eq, targets622_eq, targets623_eq]
  rfl
#print axioms targets_eq
end InitE.BackendStages.ZeroChunk608_623
