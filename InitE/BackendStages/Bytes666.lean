import InitE.BackendStages.Padded666
import InitE.BackendStages.BytesData666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes666_eq : (Padded666.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes666 := by
  with_unfolding_all rfl
#print axioms sectionBytes666_eq
end InitE.BackendStages
