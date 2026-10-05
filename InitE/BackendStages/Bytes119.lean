import InitE.BackendStages.Padded119
import InitE.BackendStages.BytesData119
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes119_eq : (Padded119.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes119 := by
  with_unfolding_all rfl
#print axioms sectionBytes119_eq
end InitE.BackendStages
