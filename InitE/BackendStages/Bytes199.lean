import InitE.BackendStages.Padded199
import InitE.BackendStages.BytesData199
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes199_eq : (Padded199.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes199 := by
  with_unfolding_all rfl
#print axioms sectionBytes199_eq
end InitE.BackendStages
