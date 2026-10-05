import InitE.BackendStages.Padded683
import InitE.BackendStages.BytesData683
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes683_eq : (Padded683.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes683 := by
  with_unfolding_all rfl
#print axioms sectionBytes683_eq
end InitE.BackendStages
