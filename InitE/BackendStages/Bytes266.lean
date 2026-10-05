import InitE.BackendStages.Padded266
import InitE.BackendStages.BytesData266
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes266_eq : (Padded266.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes266 := by
  with_unfolding_all rfl
#print axioms sectionBytes266_eq
end InitE.BackendStages
