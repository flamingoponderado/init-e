import InitE.BackendStages.Padded338
import InitE.BackendStages.BytesData338
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes338_eq : (Padded338.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes338 := by
  with_unfolding_all rfl
#print axioms sectionBytes338_eq
end InitE.BackendStages
