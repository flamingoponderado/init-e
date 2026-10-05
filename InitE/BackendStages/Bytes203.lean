import InitE.BackendStages.Padded203
import InitE.BackendStages.BytesData203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes203_eq : (Padded203.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes203 := by
  with_unfolding_all rfl
#print axioms sectionBytes203_eq
end InitE.BackendStages
