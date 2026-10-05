import InitE.BackendStages.Padded324
import InitE.BackendStages.BytesData324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes324_eq : (Padded324.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes324 := by
  with_unfolding_all rfl
#print axioms sectionBytes324_eq
end InitE.BackendStages
