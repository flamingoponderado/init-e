import InitE.BackendStages.Padded456
import InitE.BackendStages.BytesData456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes456_eq : (Padded456.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes456 := by
  with_unfolding_all rfl
#print axioms sectionBytes456_eq
end InitE.BackendStages
