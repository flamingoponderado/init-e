import InitE.BackendStages.Padded773
import InitE.BackendStages.BytesData773
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes773_eq : (Padded773.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes773 := by
  with_unfolding_all rfl
#print axioms sectionBytes773_eq
end InitE.BackendStages
