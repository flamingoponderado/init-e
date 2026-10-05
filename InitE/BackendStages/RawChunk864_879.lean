import InitE.BackendStages.Chunk864_879
import InitE.BackendStages.Raw864
import InitE.BackendStages.Raw865
import InitE.BackendStages.Raw866
import InitE.BackendStages.Raw867
import InitE.BackendStages.Raw868
import InitE.BackendStages.Raw869
import InitE.BackendStages.Raw870
import InitE.BackendStages.Raw871
import InitE.BackendStages.Raw872
import InitE.BackendStages.Raw873
import InitE.BackendStages.Raw874
import InitE.BackendStages.Raw875
import InitE.BackendStages.Raw876
import InitE.BackendStages.Raw877
import InitE.BackendStages.Raw878
import InitE.BackendStages.Raw879
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.RawChunk864_879
def bodies : List (Nat × StackLang.HolProg 64) := [(864, raw864), (865, raw865), (866, raw866), (867, raw867), (868, raw868), (869, raw869), (870, raw870), (871, raw871), (872, raw872), (873, raw873), (874, raw874), (875, raw875), (876, raw876), (877, raw877), (878, raw878), (879, raw879)]
theorem compiled_eq : Chunk864_879.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(864, StackRawCall.compTop RawInfo.rawInfo (function864 (.list [])).1), (865, StackRawCall.compTop RawInfo.rawInfo (function865 (.list [])).1), (866, StackRawCall.compTop RawInfo.rawInfo (function866 (.list [])).1), (867, StackRawCall.compTop RawInfo.rawInfo (function867 (.list [])).1), (868, StackRawCall.compTop RawInfo.rawInfo (function868 (.list [])).1), (869, StackRawCall.compTop RawInfo.rawInfo (function869 (.list [])).1), (870, StackRawCall.compTop RawInfo.rawInfo (function870 (.list [])).1), (871, StackRawCall.compTop RawInfo.rawInfo (function871 (.list [])).1), (872, StackRawCall.compTop RawInfo.rawInfo (function872 (.list [])).1), (873, StackRawCall.compTop RawInfo.rawInfo (function873 (.list [])).1), (874, StackRawCall.compTop RawInfo.rawInfo (function874 (.list [])).1), (875, StackRawCall.compTop RawInfo.rawInfo (function875 (.list [])).1), (876, StackRawCall.compTop RawInfo.rawInfo (function876 (.list [])).1), (877, StackRawCall.compTop RawInfo.rawInfo (function877 (.list [])).1), (878, StackRawCall.compTop RawInfo.rawInfo (function878 (.list [])).1), (879, StackRawCall.compTop RawInfo.rawInfo (function879 (.list [])).1)] = bodies
  rw [raw864_eq, raw865_eq, raw866_eq, raw867_eq, raw868_eq, raw869_eq, raw870_eq, raw871_eq, raw872_eq, raw873_eq, raw874_eq, raw875_eq, raw876_eq, raw877_eq, raw878_eq, raw879_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RawChunk864_879
