import InitE.BackendStages.Padded540
import InitE.BackendStages.BytesData540
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes540_eq : (Padded540.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes540 := by
  with_unfolding_all rfl
#print axioms sectionBytes540_eq
end InitE.BackendStages
