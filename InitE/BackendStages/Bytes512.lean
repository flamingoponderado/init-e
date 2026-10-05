import InitE.BackendStages.Padded512
import InitE.BackendStages.BytesData512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes512_eq : (Padded512.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes512 := by
  with_unfolding_all rfl
#print axioms sectionBytes512_eq
end InitE.BackendStages
