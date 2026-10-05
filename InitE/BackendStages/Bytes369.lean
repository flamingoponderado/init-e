import InitE.BackendStages.Padded369
import InitE.BackendStages.BytesData369
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes369_eq : (Padded369.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes369 := by
  with_unfolding_all rfl
#print axioms sectionBytes369_eq
end InitE.BackendStages
