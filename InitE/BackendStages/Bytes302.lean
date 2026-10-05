import InitE.BackendStages.Padded302
import InitE.BackendStages.BytesData302
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes302_eq : (Padded302.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes302 := by
  with_unfolding_all rfl
#print axioms sectionBytes302_eq
end InitE.BackendStages
