import InitE.BackendStages.Padded392
import InitE.BackendStages.BytesData392
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes392_eq : (Padded392.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes392 := by
  with_unfolding_all rfl
#print axioms sectionBytes392_eq
end InitE.BackendStages
