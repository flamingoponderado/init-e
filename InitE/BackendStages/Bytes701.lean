import InitE.BackendStages.Padded701
import InitE.BackendStages.BytesData701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes701_eq : (Padded701.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes701 := by
  with_unfolding_all rfl
#print axioms sectionBytes701_eq
end InitE.BackendStages
