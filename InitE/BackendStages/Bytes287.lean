import InitE.BackendStages.Padded287
import InitE.BackendStages.BytesData287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes287_eq : (Padded287.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes287 := by
  with_unfolding_all rfl
#print axioms sectionBytes287_eq
end InitE.BackendStages
