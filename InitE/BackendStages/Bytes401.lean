import InitE.BackendStages.Padded401
import InitE.BackendStages.BytesData401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes401_eq : (Padded401.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes401 := by
  with_unfolding_all rfl
#print axioms sectionBytes401_eq
end InitE.BackendStages
