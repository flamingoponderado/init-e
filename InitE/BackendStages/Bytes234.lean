import InitE.BackendStages.Padded234
import InitE.BackendStages.BytesData234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes234_eq : (Padded234.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes234 := by
  with_unfolding_all rfl
#print axioms sectionBytes234_eq
end InitE.BackendStages
