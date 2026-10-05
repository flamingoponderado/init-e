import InitE.BackendStages.Padded235
import InitE.BackendStages.BytesData235
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes235_eq : (Padded235.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes235 := by
  with_unfolding_all rfl
#print axioms sectionBytes235_eq
end InitE.BackendStages
