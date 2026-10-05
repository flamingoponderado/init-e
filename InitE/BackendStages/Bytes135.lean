import InitE.BackendStages.Padded135
import InitE.BackendStages.BytesData135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes135_eq : (Padded135.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes135 := by
  with_unfolding_all rfl
#print axioms sectionBytes135_eq
end InitE.BackendStages
