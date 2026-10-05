import InitE.BackendStages.Padded337
import InitE.BackendStages.BytesData337
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes337_eq : (Padded337.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes337 := by
  with_unfolding_all rfl
#print axioms sectionBytes337_eq
end InitE.BackendStages
