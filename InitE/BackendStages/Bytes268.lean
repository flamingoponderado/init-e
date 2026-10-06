import InitE.BackendStages.Padded268
import InitE.BackendStages.BytesData268
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes268_eq : (Padded268.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes268 := by
  with_unfolding_all rfl
#print axioms sectionBytes268_eq
end InitE.BackendStages
