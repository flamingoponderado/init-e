import InitE.BackendStages.Padded471
import InitE.BackendStages.BytesData471
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes471_eq : (Padded471.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes471 := by
  with_unfolding_all rfl
#print axioms sectionBytes471_eq
end InitE.BackendStages
