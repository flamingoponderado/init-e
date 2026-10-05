import InitE.BackendStages.Padded761
import InitE.BackendStages.BytesData761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes761_eq : (Padded761.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes761 := by
  with_unfolding_all rfl
#print axioms sectionBytes761_eq
end InitE.BackendStages
