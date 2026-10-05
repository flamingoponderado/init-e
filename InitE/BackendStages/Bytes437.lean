import InitE.BackendStages.Padded437
import InitE.BackendStages.BytesData437
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes437_eq : (Padded437.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes437 := by
  with_unfolding_all rfl
#print axioms sectionBytes437_eq
end InitE.BackendStages
