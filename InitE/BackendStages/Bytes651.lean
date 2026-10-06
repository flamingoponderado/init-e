import InitE.BackendStages.Padded651
import InitE.BackendStages.BytesData651
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes651_eq : (Padded651.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes651 := by
  with_unfolding_all rfl
#print axioms sectionBytes651_eq
end InitE.BackendStages
