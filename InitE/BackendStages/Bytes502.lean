import InitE.BackendStages.Padded502
import InitE.BackendStages.BytesData502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes502_eq : (Padded502.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes502 := by
  with_unfolding_all rfl
#print axioms sectionBytes502_eq
end InitE.BackendStages
