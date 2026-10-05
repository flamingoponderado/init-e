import InitE.BackendStages.Padded6
import InitE.BackendStages.BytesData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes6_eq : (Padded6.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes6 := by
  with_unfolding_all rfl
#print axioms sectionBytes6_eq
end InitE.BackendStages
