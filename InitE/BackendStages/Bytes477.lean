import InitE.BackendStages.Padded477
import InitE.BackendStages.BytesData477
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes477_eq : (Padded477.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes477 := by
  with_unfolding_all rfl
#print axioms sectionBytes477_eq
end InitE.BackendStages
