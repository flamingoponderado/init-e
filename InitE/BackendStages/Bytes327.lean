import InitE.BackendStages.Padded327
import InitE.BackendStages.BytesData327
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes327_eq : (Padded327.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes327 := by
  with_unfolding_all rfl
#print axioms sectionBytes327_eq
end InitE.BackendStages
