import InitE.BackendStages.Padded466
import InitE.BackendStages.BytesData466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes466_eq : (Padded466.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes466 := by
  with_unfolding_all rfl
#print axioms sectionBytes466_eq
end InitE.BackendStages
