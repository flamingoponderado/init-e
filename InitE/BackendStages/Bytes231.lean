import InitE.BackendStages.Padded231
import InitE.BackendStages.BytesData231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes231_eq : (Padded231.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes231 := by
  with_unfolding_all rfl
#print axioms sectionBytes231_eq
end InitE.BackendStages
