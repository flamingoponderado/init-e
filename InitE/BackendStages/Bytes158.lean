import InitE.BackendStages.Padded158
import InitE.BackendStages.BytesData158
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes158_eq : (Padded158.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes158 := by
  with_unfolding_all rfl
#print axioms sectionBytes158_eq
end InitE.BackendStages
