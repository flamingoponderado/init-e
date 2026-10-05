import InitE.BackendStages.Padded362
import InitE.BackendStages.BytesData362
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes362_eq : (Padded362.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes362 := by
  with_unfolding_all rfl
#print axioms sectionBytes362_eq
end InitE.BackendStages
