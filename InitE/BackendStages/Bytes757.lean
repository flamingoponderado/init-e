import InitE.BackendStages.Padded757
import InitE.BackendStages.BytesData757
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes757_eq : (Padded757.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes757 := by
  with_unfolding_all rfl
#print axioms sectionBytes757_eq
end InitE.BackendStages
