import InitE.BackendStages.Padded838
import InitE.BackendStages.BytesData838
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes838_eq : (Padded838.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes838 := by
  with_unfolding_all rfl
#print axioms sectionBytes838_eq
end InitE.BackendStages
