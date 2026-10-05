import InitE.BackendStages.Padded223
import InitE.BackendStages.BytesData223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes223_eq : (Padded223.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes223 := by
  with_unfolding_all rfl
#print axioms sectionBytes223_eq
end InitE.BackendStages
