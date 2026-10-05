import InitE.BackendStages.Padded274
import InitE.BackendStages.BytesData274
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes274_eq : (Padded274.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes274 := by
  with_unfolding_all rfl
#print axioms sectionBytes274_eq
end InitE.BackendStages
