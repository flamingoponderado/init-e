import InitE.BackendStages.Padded443
import InitE.BackendStages.BytesData443
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes443_eq : (Padded443.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes443 := by
  with_unfolding_all rfl
#print axioms sectionBytes443_eq
end InitE.BackendStages
