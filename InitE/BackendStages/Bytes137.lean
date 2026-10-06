import InitE.BackendStages.Padded137
import InitE.BackendStages.BytesData137
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes137_eq : (Padded137.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes137 := by
  with_unfolding_all rfl
#print axioms sectionBytes137_eq
end InitE.BackendStages
