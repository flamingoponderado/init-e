import InitE.BackendStages.Padded552
import InitE.BackendStages.BytesData552
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes552_eq : (Padded552.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes552 := by
  with_unfolding_all rfl
#print axioms sectionBytes552_eq
end InitE.BackendStages
