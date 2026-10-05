import InitE.BackendStages.Padded682
import InitE.BackendStages.BytesData682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes682_eq : (Padded682.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes682 := by
  with_unfolding_all rfl
#print axioms sectionBytes682_eq
end InitE.BackendStages
