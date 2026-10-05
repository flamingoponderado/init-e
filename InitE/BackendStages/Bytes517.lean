import InitE.BackendStages.Padded517
import InitE.BackendStages.BytesData517
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes517_eq : (Padded517.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes517 := by
  with_unfolding_all rfl
#print axioms sectionBytes517_eq
end InitE.BackendStages
