import InitE.BackendStages.Padded439
import InitE.BackendStages.BytesData439
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes439_eq : (Padded439.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes439 := by
  with_unfolding_all rfl
#print axioms sectionBytes439_eq
end InitE.BackendStages
