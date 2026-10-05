import InitE.BackendStages.Padded165
import InitE.BackendStages.BytesData165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes165_eq : (Padded165.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes165 := by
  with_unfolding_all rfl
#print axioms sectionBytes165_eq
end InitE.BackendStages
