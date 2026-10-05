import InitE.BackendStages.Padded555
import InitE.BackendStages.BytesData555
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes555_eq : (Padded555.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes555 := by
  with_unfolding_all rfl
#print axioms sectionBytes555_eq
end InitE.BackendStages
