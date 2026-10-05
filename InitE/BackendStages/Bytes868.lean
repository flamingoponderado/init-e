import InitE.BackendStages.Padded868
import InitE.BackendStages.BytesData868
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes868_eq : (Padded868.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes868 := by
  with_unfolding_all rfl
#print axioms sectionBytes868_eq
end InitE.BackendStages
