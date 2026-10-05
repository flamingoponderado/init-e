import InitE.BackendStages.Padded529
import InitE.BackendStages.BytesData529
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes529_eq : (Padded529.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes529 := by
  with_unfolding_all rfl
#print axioms sectionBytes529_eq
end InitE.BackendStages
