import InitE.BackendStages.Padded181
import InitE.BackendStages.BytesData181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes181_eq : (Padded181.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes181 := by
  with_unfolding_all rfl
#print axioms sectionBytes181_eq
end InitE.BackendStages
