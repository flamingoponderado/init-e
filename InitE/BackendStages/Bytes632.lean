import InitE.BackendStages.Padded632
import InitE.BackendStages.BytesData632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes632_eq : (Padded632.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes632 := by
  with_unfolding_all rfl
#print axioms sectionBytes632_eq
end InitE.BackendStages
