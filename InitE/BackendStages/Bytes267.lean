import InitE.BackendStages.Padded267
import InitE.BackendStages.BytesData267
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes267_eq : (Padded267.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes267 := by
  with_unfolding_all rfl
#print axioms sectionBytes267_eq
end InitE.BackendStages
