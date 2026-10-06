import InitE.BackendStages.Padded397
import InitE.BackendStages.BytesData397
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes397_eq : (Padded397.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes397 := by
  with_unfolding_all rfl
#print axioms sectionBytes397_eq
end InitE.BackendStages
