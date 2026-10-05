import InitE.BackendStages.Padded643
import InitE.BackendStages.BytesData643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes643_eq : (Padded643.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes643 := by
  with_unfolding_all rfl
#print axioms sectionBytes643_eq
end InitE.BackendStages
