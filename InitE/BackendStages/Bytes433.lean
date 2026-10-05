import InitE.BackendStages.Padded433
import InitE.BackendStages.BytesData433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes433_eq : (Padded433.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes433 := by
  with_unfolding_all rfl
#print axioms sectionBytes433_eq
end InitE.BackendStages
