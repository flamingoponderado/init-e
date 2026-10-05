import InitE.BackendStages.Padded601
import InitE.BackendStages.BytesData601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes601_eq : (Padded601.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes601 := by
  with_unfolding_all rfl
#print axioms sectionBytes601_eq
end InitE.BackendStages
