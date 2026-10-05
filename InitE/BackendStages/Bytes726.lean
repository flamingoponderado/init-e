import InitE.BackendStages.Padded726
import InitE.BackendStages.BytesData726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes726_eq : (Padded726.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes726 := by
  with_unfolding_all rfl
#print axioms sectionBytes726_eq
end InitE.BackendStages
