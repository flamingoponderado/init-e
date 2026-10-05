import InitE.BackendStages.Padded444
import InitE.BackendStages.BytesData444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes444_eq : (Padded444.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes444 := by
  with_unfolding_all rfl
#print axioms sectionBytes444_eq
end InitE.BackendStages
