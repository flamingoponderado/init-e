import InitE.BackendStages.Padded876
import InitE.BackendStages.BytesData876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes876_eq : (Padded876.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes876 := by
  with_unfolding_all rfl
#print axioms sectionBytes876_eq
end InitE.BackendStages
