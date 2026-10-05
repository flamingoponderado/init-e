import InitE.BackendStages.Padded241
import InitE.BackendStages.BytesData241
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes241_eq : (Padded241.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes241 := by
  with_unfolding_all rfl
#print axioms sectionBytes241_eq
end InitE.BackendStages
