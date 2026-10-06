import InitE.BackendStages.Padded543
import InitE.BackendStages.BytesData543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes543_eq : (Padded543.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes543 := by
  with_unfolding_all rfl
#print axioms sectionBytes543_eq
end InitE.BackendStages
