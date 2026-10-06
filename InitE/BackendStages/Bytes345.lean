import InitE.BackendStages.Padded345
import InitE.BackendStages.BytesData345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes345_eq : (Padded345.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes345 := by
  with_unfolding_all rfl
#print axioms sectionBytes345_eq
end InitE.BackendStages
