import InitE.BackendStages.Padded67
import InitE.BackendStages.BytesData67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes67_eq : (Padded67.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes67 := by
  with_unfolding_all rfl
#print axioms sectionBytes67_eq
end InitE.BackendStages
