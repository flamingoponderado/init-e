import InitE.BackendStages.Padded538
import InitE.BackendStages.BytesData538
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes538_eq : (Padded538.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes538 := by
  with_unfolding_all rfl
#print axioms sectionBytes538_eq
end InitE.BackendStages
