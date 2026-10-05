import InitE.BackendStages.Padded741
import InitE.BackendStages.BytesData741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes741_eq : (Padded741.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes741 := by
  with_unfolding_all rfl
#print axioms sectionBytes741_eq
end InitE.BackendStages
