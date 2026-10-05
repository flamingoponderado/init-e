import InitE.BackendStages.Padded391
import InitE.BackendStages.BytesData391
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes391_eq : (Padded391.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes391 := by
  with_unfolding_all rfl
#print axioms sectionBytes391_eq
end InitE.BackendStages
