import InitE.BackendStages.Padded563
import InitE.BackendStages.BytesData563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes563_eq : (Padded563.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes563 := by
  with_unfolding_all rfl
#print axioms sectionBytes563_eq
end InitE.BackendStages
