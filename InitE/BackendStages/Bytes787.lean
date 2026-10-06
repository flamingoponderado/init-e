import InitE.BackendStages.Padded787
import InitE.BackendStages.BytesData787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes787_eq : (Padded787.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes787 := by
  with_unfolding_all rfl
#print axioms sectionBytes787_eq
end InitE.BackendStages
