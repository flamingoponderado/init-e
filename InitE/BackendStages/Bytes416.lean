import InitE.BackendStages.Padded416
import InitE.BackendStages.BytesData416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes416_eq : (Padded416.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes416 := by
  with_unfolding_all rfl
#print axioms sectionBytes416_eq
end InitE.BackendStages
