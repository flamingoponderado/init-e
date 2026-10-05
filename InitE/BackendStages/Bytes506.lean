import InitE.BackendStages.Padded506
import InitE.BackendStages.BytesData506
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes506_eq : (Padded506.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes506 := by
  with_unfolding_all rfl
#print axioms sectionBytes506_eq
end InitE.BackendStages
