import InitE.BackendStages.Padded317
import InitE.BackendStages.BytesData317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes317_eq : (Padded317.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes317 := by
  with_unfolding_all rfl
#print axioms sectionBytes317_eq
end InitE.BackendStages
