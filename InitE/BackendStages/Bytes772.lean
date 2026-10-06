import InitE.BackendStages.Padded772
import InitE.BackendStages.BytesData772
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes772_eq : (Padded772.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes772 := by
  with_unfolding_all rfl
#print axioms sectionBytes772_eq
end InitE.BackendStages
