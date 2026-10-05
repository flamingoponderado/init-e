import InitE.BackendStages.Padded107
import InitE.BackendStages.BytesData107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes107_eq : (Padded107.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes107 := by
  with_unfolding_all rfl
#print axioms sectionBytes107_eq
end InitE.BackendStages
