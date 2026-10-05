import InitE.BackendStages.Padded628
import InitE.BackendStages.BytesData628
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes628_eq : (Padded628.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes628 := by
  with_unfolding_all rfl
#print axioms sectionBytes628_eq
end InitE.BackendStages
