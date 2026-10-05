import InitE.BackendStages.Padded294
import InitE.BackendStages.BytesData294
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes294_eq : (Padded294.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes294 := by
  with_unfolding_all rfl
#print axioms sectionBytes294_eq
end InitE.BackendStages
