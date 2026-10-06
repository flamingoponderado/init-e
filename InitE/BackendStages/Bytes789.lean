import InitE.BackendStages.Padded789
import InitE.BackendStages.BytesData789
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes789_eq : (Padded789.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes789 := by
  with_unfolding_all rfl
#print axioms sectionBytes789_eq
end InitE.BackendStages
