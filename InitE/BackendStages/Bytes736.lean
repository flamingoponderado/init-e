import InitE.BackendStages.Padded736
import InitE.BackendStages.BytesData736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes736_eq : (Padded736.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes736 := by
  with_unfolding_all rfl
#print axioms sectionBytes736_eq
end InitE.BackendStages
