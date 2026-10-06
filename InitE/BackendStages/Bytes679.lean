import InitE.BackendStages.Padded679
import InitE.BackendStages.BytesData679
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes679_eq : (Padded679.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes679 := by
  with_unfolding_all rfl
#print axioms sectionBytes679_eq
end InitE.BackendStages
