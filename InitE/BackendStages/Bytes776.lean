import InitE.BackendStages.Padded776
import InitE.BackendStages.BytesData776
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes776_eq : (Padded776.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes776 := by
  with_unfolding_all rfl
#print axioms sectionBytes776_eq
end InitE.BackendStages
