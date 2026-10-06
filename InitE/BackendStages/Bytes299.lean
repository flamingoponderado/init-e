import InitE.BackendStages.Padded299
import InitE.BackendStages.BytesData299
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes299_eq : (Padded299.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes299 := by
  with_unfolding_all rfl
#print axioms sectionBytes299_eq
end InitE.BackendStages
