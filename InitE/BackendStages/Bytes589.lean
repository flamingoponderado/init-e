import InitE.BackendStages.Padded589
import InitE.BackendStages.BytesData589
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes589_eq : (Padded589.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes589 := by
  with_unfolding_all rfl
#print axioms sectionBytes589_eq
end InitE.BackendStages
