import InitE.BackendStages.Padded301
import InitE.BackendStages.BytesData301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes301_eq : (Padded301.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes301 := by
  with_unfolding_all rfl
#print axioms sectionBytes301_eq
end InitE.BackendStages
