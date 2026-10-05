import InitE.BackendStages.Padded354
import InitE.BackendStages.BytesData354
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes354_eq : (Padded354.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes354 := by
  with_unfolding_all rfl
#print axioms sectionBytes354_eq
end InitE.BackendStages
