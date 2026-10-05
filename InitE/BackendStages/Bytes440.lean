import InitE.BackendStages.Padded440
import InitE.BackendStages.BytesData440
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes440_eq : (Padded440.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes440 := by
  with_unfolding_all rfl
#print axioms sectionBytes440_eq
end InitE.BackendStages
