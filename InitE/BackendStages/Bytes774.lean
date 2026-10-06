import InitE.BackendStages.Padded774
import InitE.BackendStages.BytesData774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes774_eq : (Padded774.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes774 := by
  with_unfolding_all rfl
#print axioms sectionBytes774_eq
end InitE.BackendStages
