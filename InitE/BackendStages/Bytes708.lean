import InitE.BackendStages.Padded708
import InitE.BackendStages.BytesData708
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes708_eq : (Padded708.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes708 := by
  with_unfolding_all rfl
#print axioms sectionBytes708_eq
end InitE.BackendStages
