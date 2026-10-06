import InitE.BackendStages.Padded229
import InitE.BackendStages.BytesData229
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes229_eq : (Padded229.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes229 := by
  with_unfolding_all rfl
#print axioms sectionBytes229_eq
end InitE.BackendStages
