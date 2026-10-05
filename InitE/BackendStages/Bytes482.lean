import InitE.BackendStages.Padded482
import InitE.BackendStages.BytesData482
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes482_eq : (Padded482.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes482 := by
  with_unfolding_all rfl
#print axioms sectionBytes482_eq
end InitE.BackendStages
