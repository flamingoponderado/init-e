import InitE.BackendStages.Padded88
import InitE.BackendStages.BytesData88
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes88_eq : (Padded88.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes88 := by
  with_unfolding_all rfl
#print axioms sectionBytes88_eq
end InitE.BackendStages
