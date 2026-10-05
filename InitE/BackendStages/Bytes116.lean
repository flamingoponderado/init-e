import InitE.BackendStages.Padded116
import InitE.BackendStages.BytesData116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes116_eq : (Padded116.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes116 := by
  with_unfolding_all rfl
#print axioms sectionBytes116_eq
end InitE.BackendStages
