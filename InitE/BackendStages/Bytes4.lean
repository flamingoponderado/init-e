import InitE.BackendStages.Padded4
import InitE.BackendStages.BytesData4
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes4_eq : (Padded4.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes4 := by
  with_unfolding_all rfl
#print axioms sectionBytes4_eq
end InitE.BackendStages
