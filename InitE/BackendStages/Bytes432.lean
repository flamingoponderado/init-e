import InitE.BackendStages.Padded432
import InitE.BackendStages.BytesData432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes432_eq : (Padded432.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes432 := by
  with_unfolding_all rfl
#print axioms sectionBytes432_eq
end InitE.BackendStages
