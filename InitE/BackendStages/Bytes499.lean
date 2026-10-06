import InitE.BackendStages.Padded499
import InitE.BackendStages.BytesData499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes499_eq : (Padded499.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes499 := by
  with_unfolding_all rfl
#print axioms sectionBytes499_eq
end InitE.BackendStages
