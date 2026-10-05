import InitE.BackendStages.Padded417
import InitE.BackendStages.BytesData417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes417_eq : (Padded417.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes417 := by
  with_unfolding_all rfl
#print axioms sectionBytes417_eq
end InitE.BackendStages
