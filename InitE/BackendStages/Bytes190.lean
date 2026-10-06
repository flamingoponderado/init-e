import InitE.BackendStages.Padded190
import InitE.BackendStages.BytesData190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes190_eq : (Padded190.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes190 := by
  with_unfolding_all rfl
#print axioms sectionBytes190_eq
end InitE.BackendStages
