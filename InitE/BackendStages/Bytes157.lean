import InitE.BackendStages.Padded157
import InitE.BackendStages.BytesData157
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes157_eq : (Padded157.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes157 := by
  with_unfolding_all rfl
#print axioms sectionBytes157_eq
end InitE.BackendStages
