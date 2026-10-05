import InitE.BackendStages.Padded194
import InitE.BackendStages.BytesData194
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes194_eq : (Padded194.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes194 := by
  with_unfolding_all rfl
#print axioms sectionBytes194_eq
end InitE.BackendStages
