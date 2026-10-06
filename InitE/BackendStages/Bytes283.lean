import InitE.BackendStages.Padded283
import InitE.BackendStages.BytesData283
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes283_eq : (Padded283.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes283 := by
  with_unfolding_all rfl
#print axioms sectionBytes283_eq
end InitE.BackendStages
