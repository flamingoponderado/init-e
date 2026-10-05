import InitE.BackendStages.Padded474
import InitE.BackendStages.BytesData474
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes474_eq : (Padded474.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes474 := by
  with_unfolding_all rfl
#print axioms sectionBytes474_eq
end InitE.BackendStages
