import InitE.BackendStages.Padded408
import InitE.BackendStages.BytesData408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes408_eq : (Padded408.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes408 := by
  with_unfolding_all rfl
#print axioms sectionBytes408_eq
end InitE.BackendStages
