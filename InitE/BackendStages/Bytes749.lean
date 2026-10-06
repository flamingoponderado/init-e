import InitE.BackendStages.Padded749
import InitE.BackendStages.BytesData749
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes749_eq : (Padded749.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes749 := by
  with_unfolding_all rfl
#print axioms sectionBytes749_eq
end InitE.BackendStages
