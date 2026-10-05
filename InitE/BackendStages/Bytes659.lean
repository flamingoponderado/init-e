import InitE.BackendStages.Padded659
import InitE.BackendStages.BytesData659
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes659_eq : (Padded659.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes659 := by
  with_unfolding_all rfl
#print axioms sectionBytes659_eq
end InitE.BackendStages
