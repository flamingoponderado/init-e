import InitE.BackendStages.Padded289
import InitE.BackendStages.BytesData289
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes289_eq : (Padded289.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes289 := by
  with_unfolding_all rfl
#print axioms sectionBytes289_eq
end InitE.BackendStages
