import InitE.BackendStages.Padded559
import InitE.BackendStages.BytesData559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes559_eq : (Padded559.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes559 := by
  with_unfolding_all rfl
#print axioms sectionBytes559_eq
end InitE.BackendStages
