import InitE.BackendStages.Padded246
import InitE.BackendStages.BytesData246
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes246_eq : (Padded246.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes246 := by
  with_unfolding_all rfl
#print axioms sectionBytes246_eq
end InitE.BackendStages
