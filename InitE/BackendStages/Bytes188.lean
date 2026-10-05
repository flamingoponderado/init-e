import InitE.BackendStages.Padded188
import InitE.BackendStages.BytesData188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes188_eq : (Padded188.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes188 := by
  with_unfolding_all rfl
#print axioms sectionBytes188_eq
end InitE.BackendStages
