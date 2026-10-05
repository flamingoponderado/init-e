import InitE.BackendStages.Padded160
import InitE.BackendStages.BytesData160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes160_eq : (Padded160.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes160 := by
  with_unfolding_all rfl
#print axioms sectionBytes160_eq
end InitE.BackendStages
