import InitE.BackendStages.Padded633
import InitE.BackendStages.BytesData633
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes633_eq : (Padded633.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes633 := by
  with_unfolding_all rfl
#print axioms sectionBytes633_eq
end InitE.BackendStages
