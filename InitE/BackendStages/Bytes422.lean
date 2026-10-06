import InitE.BackendStages.Padded422
import InitE.BackendStages.BytesData422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes422_eq : (Padded422.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes422 := by
  with_unfolding_all rfl
#print axioms sectionBytes422_eq
end InitE.BackendStages
