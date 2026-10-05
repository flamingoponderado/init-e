import InitE.BackendStages.Padded585
import InitE.BackendStages.BytesData585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes585_eq : (Padded585.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes585 := by
  with_unfolding_all rfl
#print axioms sectionBytes585_eq
end InitE.BackendStages
