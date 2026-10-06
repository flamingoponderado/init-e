import InitE.BackendStages.Padded825
import InitE.BackendStages.BytesData825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes825_eq : (Padded825.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes825 := by
  with_unfolding_all rfl
#print axioms sectionBytes825_eq
end InitE.BackendStages
