import InitE.BackendStages.Padded371
import InitE.BackendStages.BytesData371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes371_eq : (Padded371.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes371 := by
  with_unfolding_all rfl
#print axioms sectionBytes371_eq
end InitE.BackendStages
