import InitE.BackendStages.Padded200
import InitE.BackendStages.BytesData200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes200_eq : (Padded200.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes200 := by
  with_unfolding_all rfl
#print axioms sectionBytes200_eq
end InitE.BackendStages
