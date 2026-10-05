import InitE.BackendStages.Padded2
import InitE.BackendStages.BytesData2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes2_eq : (Padded2.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes2 := by
  with_unfolding_all rfl
#print axioms sectionBytes2_eq
end InitE.BackendStages
