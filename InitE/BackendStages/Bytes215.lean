import InitE.BackendStages.Padded215
import InitE.BackendStages.BytesData215
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes215_eq : (Padded215.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes215 := by
  with_unfolding_all rfl
#print axioms sectionBytes215_eq
end InitE.BackendStages
