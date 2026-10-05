import InitE.BackendStages.Padded457
import InitE.BackendStages.BytesData457
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes457_eq : (Padded457.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes457 := by
  with_unfolding_all rfl
#print axioms sectionBytes457_eq
end InitE.BackendStages
