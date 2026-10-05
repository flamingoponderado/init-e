import InitE.BackendStages.Padded93
import InitE.BackendStages.BytesData93
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes93_eq : (Padded93.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes93 := by
  with_unfolding_all rfl
#print axioms sectionBytes93_eq
end InitE.BackendStages
