import InitE.BackendStages.Padded719
import InitE.BackendStages.BytesData719
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes719_eq : (Padded719.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes719 := by
  with_unfolding_all rfl
#print axioms sectionBytes719_eq
end InitE.BackendStages
