import InitE.BackendStages.Padded177
import InitE.BackendStages.BytesData177
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes177_eq : (Padded177.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes177 := by
  with_unfolding_all rfl
#print axioms sectionBytes177_eq
end InitE.BackendStages
