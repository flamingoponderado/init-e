import InitE.BackendStages.Padded72
import InitE.BackendStages.BytesData72
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes72_eq : (Padded72.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes72 := by
  with_unfolding_all rfl
#print axioms sectionBytes72_eq
end InitE.BackendStages
