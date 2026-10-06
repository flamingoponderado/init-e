import InitE.BackendStages.Padded769
import InitE.BackendStages.BytesData769
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes769_eq : (Padded769.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes769 := by
  with_unfolding_all rfl
#print axioms sectionBytes769_eq
end InitE.BackendStages
