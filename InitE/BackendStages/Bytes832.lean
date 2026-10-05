import InitE.BackendStages.Padded832
import InitE.BackendStages.BytesData832
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes832_eq : (Padded832.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes832 := by
  with_unfolding_all rfl
#print axioms sectionBytes832_eq
end InitE.BackendStages
