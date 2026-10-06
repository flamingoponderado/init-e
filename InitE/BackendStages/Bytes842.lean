import InitE.BackendStages.Padded842
import InitE.BackendStages.BytesData842
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes842_eq : (Padded842.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes842 := by
  with_unfolding_all rfl
#print axioms sectionBytes842_eq
end InitE.BackendStages
