import InitE.BackendStages.Padded95
import InitE.BackendStages.BytesData95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes95_eq : (Padded95.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes95 := by
  with_unfolding_all rfl
#print axioms sectionBytes95_eq
end InitE.BackendStages
