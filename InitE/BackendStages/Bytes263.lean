import InitE.BackendStages.Padded263
import InitE.BackendStages.BytesData263
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes263_eq : (Padded263.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes263 := by
  with_unfolding_all rfl
#print axioms sectionBytes263_eq
end InitE.BackendStages
