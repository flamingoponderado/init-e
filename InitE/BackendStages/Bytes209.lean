import InitE.BackendStages.Padded209
import InitE.BackendStages.BytesData209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes209_eq : (Padded209.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes209 := by
  with_unfolding_all rfl
#print axioms sectionBytes209_eq
end InitE.BackendStages
