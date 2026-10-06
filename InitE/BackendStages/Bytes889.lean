import InitE.BackendStages.Padded889
import InitE.BackendStages.BytesData889
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes889_eq : (Padded889.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes889 := by
  with_unfolding_all rfl
#print axioms sectionBytes889_eq
end InitE.BackendStages
