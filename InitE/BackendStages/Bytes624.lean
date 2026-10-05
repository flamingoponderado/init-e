import InitE.BackendStages.Padded624
import InitE.BackendStages.BytesData624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes624_eq : (Padded624.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes624 := by
  with_unfolding_all rfl
#print axioms sectionBytes624_eq
end InitE.BackendStages
