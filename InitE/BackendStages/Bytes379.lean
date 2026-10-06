import InitE.BackendStages.Padded379
import InitE.BackendStages.BytesData379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes379_eq : (Padded379.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes379 := by
  with_unfolding_all rfl
#print axioms sectionBytes379_eq
end InitE.BackendStages
