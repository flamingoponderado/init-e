import InitE.BackendStages.Padded826
import InitE.BackendStages.BytesData826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes826_eq : (Padded826.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes826 := by
  with_unfolding_all rfl
#print axioms sectionBytes826_eq
end InitE.BackendStages
