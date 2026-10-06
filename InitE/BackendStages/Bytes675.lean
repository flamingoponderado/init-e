import InitE.BackendStages.Padded675
import InitE.BackendStages.BytesData675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes675_eq : (Padded675.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes675 := by
  with_unfolding_all rfl
#print axioms sectionBytes675_eq
end InitE.BackendStages
