import InitE.BackendStages.Padded767
import InitE.BackendStages.BytesData767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes767_eq : (Padded767.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes767 := by
  with_unfolding_all rfl
#print axioms sectionBytes767_eq
end InitE.BackendStages
