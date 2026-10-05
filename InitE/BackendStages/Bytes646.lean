import InitE.BackendStages.Padded646
import InitE.BackendStages.BytesData646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes646_eq : (Padded646.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes646 := by
  with_unfolding_all rfl
#print axioms sectionBytes646_eq
end InitE.BackendStages
