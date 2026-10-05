import InitE.BackendStages.Padded112
import InitE.BackendStages.BytesData112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes112_eq : (Padded112.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes112 := by
  with_unfolding_all rfl
#print axioms sectionBytes112_eq
end InitE.BackendStages
