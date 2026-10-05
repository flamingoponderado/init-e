import InitE.BackendStages.Padded286
import InitE.BackendStages.BytesData286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes286_eq : (Padded286.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes286 := by
  with_unfolding_all rfl
#print axioms sectionBytes286_eq
end InitE.BackendStages
