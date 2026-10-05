import InitE.BackendStages.Padded738
import InitE.BackendStages.BytesData738
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes738_eq : (Padded738.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes738 := by
  with_unfolding_all rfl
#print axioms sectionBytes738_eq
end InitE.BackendStages
