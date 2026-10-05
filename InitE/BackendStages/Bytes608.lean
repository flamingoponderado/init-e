import InitE.BackendStages.Padded608
import InitE.BackendStages.BytesData608
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes608_eq : (Padded608.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes608 := by
  with_unfolding_all rfl
#print axioms sectionBytes608_eq
end InitE.BackendStages
