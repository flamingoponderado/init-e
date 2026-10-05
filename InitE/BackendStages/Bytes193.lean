import InitE.BackendStages.Padded193
import InitE.BackendStages.BytesData193
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes193_eq : (Padded193.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes193 := by
  with_unfolding_all rfl
#print axioms sectionBytes193_eq
end InitE.BackendStages
