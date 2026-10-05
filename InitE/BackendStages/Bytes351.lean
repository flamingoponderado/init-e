import InitE.BackendStages.Padded351
import InitE.BackendStages.BytesData351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes351_eq : (Padded351.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes351 := by
  with_unfolding_all rfl
#print axioms sectionBytes351_eq
end InitE.BackendStages
