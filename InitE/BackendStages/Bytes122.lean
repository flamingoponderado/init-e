import InitE.BackendStages.Padded122
import InitE.BackendStages.BytesData122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes122_eq : (Padded122.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes122 := by
  with_unfolding_all rfl
#print axioms sectionBytes122_eq
end InitE.BackendStages
