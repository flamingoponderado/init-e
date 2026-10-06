import InitE.BackendStages.Padded725
import InitE.BackendStages.BytesData725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes725_eq : (Padded725.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes725 := by
  with_unfolding_all rfl
#print axioms sectionBytes725_eq
end InitE.BackendStages
