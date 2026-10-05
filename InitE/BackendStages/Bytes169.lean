import InitE.BackendStages.Padded169
import InitE.BackendStages.BytesData169
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes169_eq : (Padded169.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes169 := by
  with_unfolding_all rfl
#print axioms sectionBytes169_eq
end InitE.BackendStages
