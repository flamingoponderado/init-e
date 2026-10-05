import InitE.BackendStages.Padded252
import InitE.BackendStages.BytesData252
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes252_eq : (Padded252.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes252 := by
  with_unfolding_all rfl
#print axioms sectionBytes252_eq
end InitE.BackendStages
