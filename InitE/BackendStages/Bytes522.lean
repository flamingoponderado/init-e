import InitE.BackendStages.Padded522
import InitE.BackendStages.BytesData522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes522_eq : (Padded522.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes522 := by
  with_unfolding_all rfl
#print axioms sectionBytes522_eq
end InitE.BackendStages
