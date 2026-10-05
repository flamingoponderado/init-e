import InitE.BackendStages.Padded306
import InitE.BackendStages.BytesData306
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes306_eq : (Padded306.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes306 := by
  with_unfolding_all rfl
#print axioms sectionBytes306_eq
end InitE.BackendStages
