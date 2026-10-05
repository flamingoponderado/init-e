import InitE.BackendStages.Padded441
import InitE.BackendStages.BytesData441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes441_eq : (Padded441.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes441 := by
  with_unfolding_all rfl
#print axioms sectionBytes441_eq
end InitE.BackendStages
