import InitE.BackendStages.Padded539
import InitE.BackendStages.BytesData539
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes539_eq : (Padded539.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes539 := by
  with_unfolding_all rfl
#print axioms sectionBytes539_eq
end InitE.BackendStages
