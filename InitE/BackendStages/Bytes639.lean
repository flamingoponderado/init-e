import InitE.BackendStages.Padded639
import InitE.BackendStages.BytesData639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes639_eq : (Padded639.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes639 := by
  with_unfolding_all rfl
#print axioms sectionBytes639_eq
end InitE.BackendStages
