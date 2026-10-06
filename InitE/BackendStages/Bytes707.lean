import InitE.BackendStages.Padded707
import InitE.BackendStages.BytesData707
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes707_eq : (Padded707.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes707 := by
  with_unfolding_all rfl
#print axioms sectionBytes707_eq
end InitE.BackendStages
