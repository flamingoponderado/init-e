import InitE.BackendStages.Padded353
import InitE.BackendStages.BytesData353
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes353_eq : (Padded353.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes353 := by
  with_unfolding_all rfl
#print axioms sectionBytes353_eq
end InitE.BackendStages
