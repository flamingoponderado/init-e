import InitE.BackendStages.Padded149
import InitE.BackendStages.BytesData149
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes149_eq : (Padded149.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes149 := by
  with_unfolding_all rfl
#print axioms sectionBytes149_eq
end InitE.BackendStages
