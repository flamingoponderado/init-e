import InitE.BackendStages.Padded875
import InitE.BackendStages.BytesData875
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes875_eq : (Padded875.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes875 := by
  with_unfolding_all rfl
#print axioms sectionBytes875_eq
end InitE.BackendStages
