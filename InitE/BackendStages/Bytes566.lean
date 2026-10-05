import InitE.BackendStages.Padded566
import InitE.BackendStages.BytesData566
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes566_eq : (Padded566.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes566 := by
  with_unfolding_all rfl
#print axioms sectionBytes566_eq
end InitE.BackendStages
