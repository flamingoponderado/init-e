import InitE.BackendStages.Padded498
import InitE.BackendStages.BytesData498
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes498_eq : (Padded498.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes498 := by
  with_unfolding_all rfl
#print axioms sectionBytes498_eq
end InitE.BackendStages
