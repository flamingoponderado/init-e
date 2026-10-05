import InitE.BackendStages.Padded129
import InitE.BackendStages.BytesData129
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes129_eq : (Padded129.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes129 := by
  with_unfolding_all rfl
#print axioms sectionBytes129_eq
end InitE.BackendStages
