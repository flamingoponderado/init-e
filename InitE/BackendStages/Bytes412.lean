import InitE.BackendStages.Padded412
import InitE.BackendStages.BytesData412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes412_eq : (Padded412.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes412 := by
  with_unfolding_all rfl
#print axioms sectionBytes412_eq
end InitE.BackendStages
