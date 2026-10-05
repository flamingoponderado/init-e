import InitE.BackendStages.Padded613
import InitE.BackendStages.BytesData613
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes613_eq : (Padded613.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes613 := by
  with_unfolding_all rfl
#print axioms sectionBytes613_eq
end InitE.BackendStages
