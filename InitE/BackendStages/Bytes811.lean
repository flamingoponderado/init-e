import InitE.BackendStages.Padded811
import InitE.BackendStages.BytesData811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes811_eq : (Padded811.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes811 := by
  with_unfolding_all rfl
#print axioms sectionBytes811_eq
end InitE.BackendStages
