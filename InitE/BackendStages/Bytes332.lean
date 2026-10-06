import InitE.BackendStages.Padded332
import InitE.BackendStages.BytesData332
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes332_eq : (Padded332.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes332 := by
  with_unfolding_all rfl
#print axioms sectionBytes332_eq
end InitE.BackendStages
