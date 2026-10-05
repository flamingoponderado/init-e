import InitE.BackendStages.Padded307
import InitE.BackendStages.BytesData307
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes307_eq : (Padded307.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes307 := by
  with_unfolding_all rfl
#print axioms sectionBytes307_eq
end InitE.BackendStages
