import InitE.BackendStages.Padded76
import InitE.BackendStages.BytesData76
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes76_eq : (Padded76.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes76 := by
  with_unfolding_all rfl
#print axioms sectionBytes76_eq
end InitE.BackendStages
