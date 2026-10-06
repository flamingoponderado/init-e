import InitE.BackendStages.Padded824
import InitE.BackendStages.BytesData824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes824_eq : (Padded824.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes824 := by
  with_unfolding_all rfl
#print axioms sectionBytes824_eq
end InitE.BackendStages
