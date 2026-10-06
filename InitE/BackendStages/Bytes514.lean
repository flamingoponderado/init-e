import InitE.BackendStages.Padded514
import InitE.BackendStages.BytesData514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes514_eq : (Padded514.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes514 := by
  with_unfolding_all rfl
#print axioms sectionBytes514_eq
end InitE.BackendStages
