import InitE.BackendStages.Padded167
import InitE.BackendStages.BytesData167
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes167_eq : (Padded167.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes167 := by
  with_unfolding_all rfl
#print axioms sectionBytes167_eq
end InitE.BackendStages
