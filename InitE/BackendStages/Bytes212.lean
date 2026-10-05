import InitE.BackendStages.Padded212
import InitE.BackendStages.BytesData212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes212_eq : (Padded212.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes212 := by
  with_unfolding_all rfl
#print axioms sectionBytes212_eq
end InitE.BackendStages
