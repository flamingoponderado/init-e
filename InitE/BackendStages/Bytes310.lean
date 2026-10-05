import InitE.BackendStages.Padded310
import InitE.BackendStages.BytesData310
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes310_eq : (Padded310.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes310 := by
  with_unfolding_all rfl
#print axioms sectionBytes310_eq
end InitE.BackendStages
