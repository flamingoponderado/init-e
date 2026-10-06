import InitE.BackendStages.Padded346
import InitE.BackendStages.BytesData346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes346_eq : (Padded346.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes346 := by
  with_unfolding_all rfl
#print axioms sectionBytes346_eq
end InitE.BackendStages
