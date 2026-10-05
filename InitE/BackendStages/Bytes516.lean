import InitE.BackendStages.Padded516
import InitE.BackendStages.BytesData516
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes516_eq : (Padded516.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes516 := by
  with_unfolding_all rfl
#print axioms sectionBytes516_eq
end InitE.BackendStages
