import InitE.BackendStages.Padded617
import InitE.BackendStages.BytesData617
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes617_eq : (Padded617.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes617 := by
  with_unfolding_all rfl
#print axioms sectionBytes617_eq
end InitE.BackendStages
