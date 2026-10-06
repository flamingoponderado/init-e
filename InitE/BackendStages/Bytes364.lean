import InitE.BackendStages.Padded364
import InitE.BackendStages.BytesData364
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes364_eq : (Padded364.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes364 := by
  with_unfolding_all rfl
#print axioms sectionBytes364_eq
end InitE.BackendStages
