import InitE.BackendStages.Padded342
import InitE.BackendStages.BytesData342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes342_eq : (Padded342.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes342 := by
  with_unfolding_all rfl
#print axioms sectionBytes342_eq
end InitE.BackendStages
