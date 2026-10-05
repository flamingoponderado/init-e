import InitE.BackendStages.Padded635
import InitE.BackendStages.BytesData635
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes635_eq : (Padded635.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes635 := by
  with_unfolding_all rfl
#print axioms sectionBytes635_eq
end InitE.BackendStages
