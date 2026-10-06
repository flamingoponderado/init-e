import InitE.BackendStages.Padded247
import InitE.BackendStages.BytesData247
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes247_eq : (Padded247.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes247 := by
  with_unfolding_all rfl
#print axioms sectionBytes247_eq
end InitE.BackendStages
