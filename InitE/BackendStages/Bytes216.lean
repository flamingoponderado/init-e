import InitE.BackendStages.Padded216
import InitE.BackendStages.BytesData216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes216_eq : (Padded216.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes216 := by
  with_unfolding_all rfl
#print axioms sectionBytes216_eq
end InitE.BackendStages
