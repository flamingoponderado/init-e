import InitE.BackendStages.Padded494
import InitE.BackendStages.BytesData494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes494_eq : (Padded494.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes494 := by
  with_unfolding_all rfl
#print axioms sectionBytes494_eq
end InitE.BackendStages
