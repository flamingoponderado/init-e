import InitE.BackendStages.Padded82
import InitE.BackendStages.BytesData82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes82_eq : (Padded82.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes82 := by
  with_unfolding_all rfl
#print axioms sectionBytes82_eq
end InitE.BackendStages
