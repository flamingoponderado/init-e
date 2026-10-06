import InitE.BackendStages.Padded438
import InitE.BackendStages.BytesData438
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes438_eq : (Padded438.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes438 := by
  with_unfolding_all rfl
#print axioms sectionBytes438_eq
end InitE.BackendStages
