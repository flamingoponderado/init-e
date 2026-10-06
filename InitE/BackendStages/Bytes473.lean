import InitE.BackendStages.Padded473
import InitE.BackendStages.BytesData473
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes473_eq : (Padded473.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes473 := by
  with_unfolding_all rfl
#print axioms sectionBytes473_eq
end InitE.BackendStages
