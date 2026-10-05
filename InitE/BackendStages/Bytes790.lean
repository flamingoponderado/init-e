import InitE.BackendStages.Padded790
import InitE.BackendStages.BytesData790
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes790_eq : (Padded790.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes790 := by
  with_unfolding_all rfl
#print axioms sectionBytes790_eq
end InitE.BackendStages
