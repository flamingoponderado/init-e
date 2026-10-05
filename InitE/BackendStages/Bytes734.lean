import InitE.BackendStages.Padded734
import InitE.BackendStages.BytesData734
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes734_eq : (Padded734.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes734 := by
  with_unfolding_all rfl
#print axioms sectionBytes734_eq
end InitE.BackendStages
