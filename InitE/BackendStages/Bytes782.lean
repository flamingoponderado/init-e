import InitE.BackendStages.Padded782
import InitE.BackendStages.BytesData782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes782_eq : (Padded782.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes782 := by
  with_unfolding_all rfl
#print axioms sectionBytes782_eq
end InitE.BackendStages
