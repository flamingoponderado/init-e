import InitE.BackendStages.Padded78
import InitE.BackendStages.BytesData78
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes78_eq : (Padded78.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes78 := by
  with_unfolding_all rfl
#print axioms sectionBytes78_eq
end InitE.BackendStages
