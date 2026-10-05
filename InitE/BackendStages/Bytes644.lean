import InitE.BackendStages.Padded644
import InitE.BackendStages.BytesData644
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes644_eq : (Padded644.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes644 := by
  with_unfolding_all rfl
#print axioms sectionBytes644_eq
end InitE.BackendStages
