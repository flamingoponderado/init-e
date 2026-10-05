import InitE.BackendStages.Padded594
import InitE.BackendStages.BytesData594
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes594_eq : (Padded594.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes594 := by
  with_unfolding_all rfl
#print axioms sectionBytes594_eq
end InitE.BackendStages
