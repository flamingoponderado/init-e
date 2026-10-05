import InitE.BackendStages.Padded853
import InitE.BackendStages.BytesData853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes853_eq : (Padded853.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes853 := by
  with_unfolding_all rfl
#print axioms sectionBytes853_eq
end InitE.BackendStages
