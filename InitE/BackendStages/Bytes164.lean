import InitE.BackendStages.Padded164
import InitE.BackendStages.BytesData164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes164_eq : (Padded164.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes164 := by
  with_unfolding_all rfl
#print axioms sectionBytes164_eq
end InitE.BackendStages
