import InitE.BackendStages.Padded424
import InitE.BackendStages.BytesData424
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes424_eq : (Padded424.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes424 := by
  with_unfolding_all rfl
#print axioms sectionBytes424_eq
end InitE.BackendStages
