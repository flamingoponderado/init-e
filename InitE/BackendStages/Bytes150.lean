import InitE.BackendStages.Padded150
import InitE.BackendStages.BytesData150
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes150_eq : (Padded150.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes150 := by
  with_unfolding_all rfl
#print axioms sectionBytes150_eq
end InitE.BackendStages
