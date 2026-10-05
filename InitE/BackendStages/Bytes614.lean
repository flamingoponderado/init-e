import InitE.BackendStages.Padded614
import InitE.BackendStages.BytesData614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes614_eq : (Padded614.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes614 := by
  with_unfolding_all rfl
#print axioms sectionBytes614_eq
end InitE.BackendStages
