import InitE.BackendStages.Padded606
import InitE.BackendStages.BytesData606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes606_eq : (Padded606.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes606 := by
  with_unfolding_all rfl
#print axioms sectionBytes606_eq
end InitE.BackendStages
