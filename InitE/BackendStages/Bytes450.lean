import InitE.BackendStages.Padded450
import InitE.BackendStages.BytesData450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes450_eq : (Padded450.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes450 := by
  with_unfolding_all rfl
#print axioms sectionBytes450_eq
end InitE.BackendStages
