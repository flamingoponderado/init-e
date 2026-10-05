import InitE.BackendStages.Padded546
import InitE.BackendStages.BytesData546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes546_eq : (Padded546.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes546 := by
  with_unfolding_all rfl
#print axioms sectionBytes546_eq
end InitE.BackendStages
