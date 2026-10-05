import InitE.BackendStages.Padded284
import InitE.BackendStages.BytesData284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes284_eq : (Padded284.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes284 := by
  with_unfolding_all rfl
#print axioms sectionBytes284_eq
end InitE.BackendStages
