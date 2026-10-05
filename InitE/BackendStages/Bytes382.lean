import InitE.BackendStages.Padded382
import InitE.BackendStages.BytesData382
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes382_eq : (Padded382.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes382 := by
  with_unfolding_all rfl
#print axioms sectionBytes382_eq
end InitE.BackendStages
