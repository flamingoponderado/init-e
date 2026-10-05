import InitE.BackendStages.Padded68
import InitE.BackendStages.BytesData68
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes68_eq : (Padded68.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes68 := by
  with_unfolding_all rfl
#print axioms sectionBytes68_eq
end InitE.BackendStages
