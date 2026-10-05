import InitE.BackendStages.Padded578
import InitE.BackendStages.BytesData578
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes578_eq : (Padded578.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes578 := by
  with_unfolding_all rfl
#print axioms sectionBytes578_eq
end InitE.BackendStages
