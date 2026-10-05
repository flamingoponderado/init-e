import InitE.BackendStages.Padded192
import InitE.BackendStages.BytesData192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes192_eq : (Padded192.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes192 := by
  with_unfolding_all rfl
#print axioms sectionBytes192_eq
end InitE.BackendStages
