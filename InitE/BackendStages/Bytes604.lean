import InitE.BackendStages.Padded604
import InitE.BackendStages.BytesData604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes604_eq : (Padded604.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes604 := by
  with_unfolding_all rfl
#print axioms sectionBytes604_eq
end InitE.BackendStages
