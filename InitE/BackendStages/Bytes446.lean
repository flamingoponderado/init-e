import InitE.BackendStages.Padded446
import InitE.BackendStages.BytesData446
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes446_eq : (Padded446.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes446 := by
  with_unfolding_all rfl
#print axioms sectionBytes446_eq
end InitE.BackendStages
