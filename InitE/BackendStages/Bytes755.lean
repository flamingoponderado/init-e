import InitE.BackendStages.Padded755
import InitE.BackendStages.BytesData755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes755_eq : (Padded755.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes755 := by
  with_unfolding_all rfl
#print axioms sectionBytes755_eq
end InitE.BackendStages
