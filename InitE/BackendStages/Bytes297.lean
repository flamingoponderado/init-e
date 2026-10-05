import InitE.BackendStages.Padded297
import InitE.BackendStages.BytesData297
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes297_eq : (Padded297.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes297 := by
  with_unfolding_all rfl
#print axioms sectionBytes297_eq
end InitE.BackendStages
