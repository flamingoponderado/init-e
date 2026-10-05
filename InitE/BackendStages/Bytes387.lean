import InitE.BackendStages.Padded387
import InitE.BackendStages.BytesData387
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes387_eq : (Padded387.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes387 := by
  with_unfolding_all rfl
#print axioms sectionBytes387_eq
end InitE.BackendStages
