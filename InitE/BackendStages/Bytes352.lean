import InitE.BackendStages.Padded352
import InitE.BackendStages.BytesData352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes352_eq : (Padded352.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes352 := by
  with_unfolding_all rfl
#print axioms sectionBytes352_eq
end InitE.BackendStages
