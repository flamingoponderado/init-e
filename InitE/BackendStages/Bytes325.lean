import InitE.BackendStages.Padded325
import InitE.BackendStages.BytesData325
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes325_eq : (Padded325.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes325 := by
  with_unfolding_all rfl
#print axioms sectionBytes325_eq
end InitE.BackendStages
