import InitE.BackendStages.Padded627
import InitE.BackendStages.BytesData627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes627_eq : (Padded627.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes627 := by
  with_unfolding_all rfl
#print axioms sectionBytes627_eq
end InitE.BackendStages
