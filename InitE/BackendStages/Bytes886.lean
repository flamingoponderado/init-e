import InitE.BackendStages.Padded886
import InitE.BackendStages.BytesData886
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes886_eq : (Padded886.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes886 := by
  with_unfolding_all rfl
#print axioms sectionBytes886_eq
end InitE.BackendStages
