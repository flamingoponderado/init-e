import InitE.BackendStages.Padded525
import InitE.BackendStages.BytesData525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes525_eq : (Padded525.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes525 := by
  with_unfolding_all rfl
#print axioms sectionBytes525_eq
end InitE.BackendStages
