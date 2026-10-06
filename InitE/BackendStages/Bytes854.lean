import InitE.BackendStages.Padded854
import InitE.BackendStages.BytesData854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes854_eq : (Padded854.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes854 := by
  with_unfolding_all rfl
#print axioms sectionBytes854_eq
end InitE.BackendStages
