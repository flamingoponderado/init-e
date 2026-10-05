import InitE.BackendStages.Padded687
import InitE.BackendStages.BytesData687
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes687_eq : (Padded687.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes687 := by
  with_unfolding_all rfl
#print axioms sectionBytes687_eq
end InitE.BackendStages
