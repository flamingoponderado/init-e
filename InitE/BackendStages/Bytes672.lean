import InitE.BackendStages.Padded672
import InitE.BackendStages.BytesData672
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes672_eq : (Padded672.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes672 := by
  with_unfolding_all rfl
#print axioms sectionBytes672_eq
end InitE.BackendStages
