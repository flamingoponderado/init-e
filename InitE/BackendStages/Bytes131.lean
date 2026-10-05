import InitE.BackendStages.Padded131
import InitE.BackendStages.BytesData131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes131_eq : (Padded131.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes131 := by
  with_unfolding_all rfl
#print axioms sectionBytes131_eq
end InitE.BackendStages
