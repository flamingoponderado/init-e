import InitE.BackendStages.Padded363
import InitE.BackendStages.BytesData363
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes363_eq : (Padded363.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes363 := by
  with_unfolding_all rfl
#print axioms sectionBytes363_eq
end InitE.BackendStages
