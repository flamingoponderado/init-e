import InitE.BackendStages.Padded224
import InitE.BackendStages.BytesData224
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes224_eq : (Padded224.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes224 := by
  with_unfolding_all rfl
#print axioms sectionBytes224_eq
end InitE.BackendStages
