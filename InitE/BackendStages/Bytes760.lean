import InitE.BackendStages.Padded760
import InitE.BackendStages.BytesData760
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes760_eq : (Padded760.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes760 := by
  with_unfolding_all rfl
#print axioms sectionBytes760_eq
end InitE.BackendStages
