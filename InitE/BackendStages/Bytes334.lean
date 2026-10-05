import InitE.BackendStages.Padded334
import InitE.BackendStages.BytesData334
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes334_eq : (Padded334.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes334 := by
  with_unfolding_all rfl
#print axioms sectionBytes334_eq
end InitE.BackendStages
