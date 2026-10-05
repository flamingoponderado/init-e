import InitE.BackendStages.Padded472
import InitE.BackendStages.BytesData472
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes472_eq : (Padded472.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes472 := by
  with_unfolding_all rfl
#print axioms sectionBytes472_eq
end InitE.BackendStages
