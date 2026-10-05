import InitE.BackendStages.Padded94
import InitE.BackendStages.BytesData94
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes94_eq : (Padded94.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes94 := by
  with_unfolding_all rfl
#print axioms sectionBytes94_eq
end InitE.BackendStages
