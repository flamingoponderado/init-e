import InitE.BackendStages.Padded281
import InitE.BackendStages.BytesData281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes281_eq : (Padded281.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes281 := by
  with_unfolding_all rfl
#print axioms sectionBytes281_eq
end InitE.BackendStages
