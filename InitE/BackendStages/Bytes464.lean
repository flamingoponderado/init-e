import InitE.BackendStages.Padded464
import InitE.BackendStages.BytesData464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes464_eq : (Padded464.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes464 := by
  with_unfolding_all rfl
#print axioms sectionBytes464_eq
end InitE.BackendStages
