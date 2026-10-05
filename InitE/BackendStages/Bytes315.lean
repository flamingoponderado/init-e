import InitE.BackendStages.Padded315
import InitE.BackendStages.BytesData315
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes315_eq : (Padded315.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes315 := by
  with_unfolding_all rfl
#print axioms sectionBytes315_eq
end InitE.BackendStages
