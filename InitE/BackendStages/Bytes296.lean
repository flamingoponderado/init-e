import InitE.BackendStages.Padded296
import InitE.BackendStages.BytesData296
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes296_eq : (Padded296.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes296 := by
  with_unfolding_all rfl
#print axioms sectionBytes296_eq
end InitE.BackendStages
