import InitE.BackendStages.Padded388
import InitE.BackendStages.BytesData388
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes388_eq : (Padded388.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes388 := by
  with_unfolding_all rfl
#print axioms sectionBytes388_eq
end InitE.BackendStages
