import InitE.BackendStages.Padded636
import InitE.BackendStages.BytesData636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes636_eq : (Padded636.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes636 := by
  with_unfolding_all rfl
#print axioms sectionBytes636_eq
end InitE.BackendStages
