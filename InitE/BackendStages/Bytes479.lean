import InitE.BackendStages.Padded479
import InitE.BackendStages.BytesData479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes479_eq : (Padded479.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes479 := by
  with_unfolding_all rfl
#print axioms sectionBytes479_eq
end InitE.BackendStages
