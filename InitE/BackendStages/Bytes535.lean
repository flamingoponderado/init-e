import InitE.BackendStages.Padded535
import InitE.BackendStages.BytesData535
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes535_eq : (Padded535.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes535 := by
  with_unfolding_all rfl
#print axioms sectionBytes535_eq
end InitE.BackendStages
