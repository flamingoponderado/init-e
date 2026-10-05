import InitE.BackendStages.Padded872
import InitE.BackendStages.BytesData872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes872_eq : (Padded872.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes872 := by
  with_unfolding_all rfl
#print axioms sectionBytes872_eq
end InitE.BackendStages
