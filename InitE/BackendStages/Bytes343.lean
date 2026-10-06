import InitE.BackendStages.Padded343
import InitE.BackendStages.BytesData343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes343_eq : (Padded343.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes343 := by
  with_unfolding_all rfl
#print axioms sectionBytes343_eq
end InitE.BackendStages
