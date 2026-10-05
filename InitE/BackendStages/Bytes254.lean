import InitE.BackendStages.Padded254
import InitE.BackendStages.BytesData254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes254_eq : (Padded254.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes254 := by
  with_unfolding_all rfl
#print axioms sectionBytes254_eq
end InitE.BackendStages
