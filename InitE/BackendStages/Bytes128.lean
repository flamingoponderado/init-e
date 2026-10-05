import InitE.BackendStages.Padded128
import InitE.BackendStages.BytesData128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes128_eq : (Padded128.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes128 := by
  with_unfolding_all rfl
#print axioms sectionBytes128_eq
end InitE.BackendStages
