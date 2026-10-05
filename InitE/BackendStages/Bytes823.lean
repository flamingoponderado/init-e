import InitE.BackendStages.Padded823
import InitE.BackendStages.BytesData823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes823_eq : (Padded823.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes823 := by
  with_unfolding_all rfl
#print axioms sectionBytes823_eq
end InitE.BackendStages
