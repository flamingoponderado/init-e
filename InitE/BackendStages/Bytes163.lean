import InitE.BackendStages.Padded163
import InitE.BackendStages.BytesData163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes163_eq : (Padded163.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes163 := by
  with_unfolding_all rfl
#print axioms sectionBytes163_eq
end InitE.BackendStages
