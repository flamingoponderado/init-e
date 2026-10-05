import InitE.BackendStages.Padded423
import InitE.BackendStages.BytesData423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes423_eq : (Padded423.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes423 := by
  with_unfolding_all rfl
#print axioms sectionBytes423_eq
end InitE.BackendStages
