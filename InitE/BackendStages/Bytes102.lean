import InitE.BackendStages.Padded102
import InitE.BackendStages.BytesData102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes102_eq : (Padded102.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes102 := by
  with_unfolding_all rfl
#print axioms sectionBytes102_eq
end InitE.BackendStages
