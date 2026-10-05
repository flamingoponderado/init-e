import InitE.BackendStages.Padded204
import InitE.BackendStages.BytesData204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes204_eq : (Padded204.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes204 := by
  with_unfolding_all rfl
#print axioms sectionBytes204_eq
end InitE.BackendStages
