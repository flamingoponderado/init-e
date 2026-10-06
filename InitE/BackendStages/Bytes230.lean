import InitE.BackendStages.Padded230
import InitE.BackendStages.BytesData230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes230_eq : (Padded230.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes230 := by
  with_unfolding_all rfl
#print axioms sectionBytes230_eq
end InitE.BackendStages
