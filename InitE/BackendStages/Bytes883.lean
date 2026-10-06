import InitE.BackendStages.Padded883
import InitE.BackendStages.BytesData883
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes883_eq : (Padded883.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes883 := by
  with_unfolding_all rfl
#print axioms sectionBytes883_eq
end InitE.BackendStages
