import InitE.BackendStages.Padded73
import InitE.BackendStages.BytesData73
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes73_eq : (Padded73.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes73 := by
  with_unfolding_all rfl
#print axioms sectionBytes73_eq
end InitE.BackendStages
