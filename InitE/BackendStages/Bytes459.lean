import InitE.BackendStages.Padded459
import InitE.BackendStages.BytesData459
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes459_eq : (Padded459.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes459 := by
  with_unfolding_all rfl
#print axioms sectionBytes459_eq
end InitE.BackendStages
