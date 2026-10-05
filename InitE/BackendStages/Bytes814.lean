import InitE.BackendStages.Padded814
import InitE.BackendStages.BytesData814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes814_eq : (Padded814.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes814 := by
  with_unfolding_all rfl
#print axioms sectionBytes814_eq
end InitE.BackendStages
