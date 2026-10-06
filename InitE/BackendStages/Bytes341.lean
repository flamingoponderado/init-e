import InitE.BackendStages.Padded341
import InitE.BackendStages.BytesData341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes341_eq : (Padded341.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes341 := by
  with_unfolding_all rfl
#print axioms sectionBytes341_eq
end InitE.BackendStages
