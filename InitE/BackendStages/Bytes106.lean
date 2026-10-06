import InitE.BackendStages.Padded106
import InitE.BackendStages.BytesData106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes106_eq : (Padded106.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes106 := by
  with_unfolding_all rfl
#print axioms sectionBytes106_eq
end InitE.BackendStages
