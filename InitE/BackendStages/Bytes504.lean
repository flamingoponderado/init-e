import InitE.BackendStages.Padded504
import InitE.BackendStages.BytesData504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes504_eq : (Padded504.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes504 := by
  with_unfolding_all rfl
#print axioms sectionBytes504_eq
end InitE.BackendStages
