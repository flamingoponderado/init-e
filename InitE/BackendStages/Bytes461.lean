import InitE.BackendStages.Padded461
import InitE.BackendStages.BytesData461
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes461_eq : (Padded461.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes461 := by
  with_unfolding_all rfl
#print axioms sectionBytes461_eq
end InitE.BackendStages
