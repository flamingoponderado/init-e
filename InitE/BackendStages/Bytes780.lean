import InitE.BackendStages.Padded780
import InitE.BackendStages.BytesData780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes780_eq : (Padded780.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes780 := by
  with_unfolding_all rfl
#print axioms sectionBytes780_eq
end InitE.BackendStages
