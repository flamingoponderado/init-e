import InitE.BackendStages.Padded655
import InitE.BackendStages.BytesData655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes655_eq : (Padded655.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes655 := by
  with_unfolding_all rfl
#print axioms sectionBytes655_eq
end InitE.BackendStages
