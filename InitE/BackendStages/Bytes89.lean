import InitE.BackendStages.Padded89
import InitE.BackendStages.BytesData89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes89_eq : (Padded89.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes89 := by
  with_unfolding_all rfl
#print axioms sectionBytes89_eq
end InitE.BackendStages
