import InitE.BackendStages.Padded641
import InitE.BackendStages.BytesData641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes641_eq : (Padded641.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes641 := by
  with_unfolding_all rfl
#print axioms sectionBytes641_eq
end InitE.BackendStages
