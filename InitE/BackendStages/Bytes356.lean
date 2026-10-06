import InitE.BackendStages.Padded356
import InitE.BackendStages.BytesData356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes356_eq : (Padded356.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes356 := by
  with_unfolding_all rfl
#print axioms sectionBytes356_eq
end InitE.BackendStages
