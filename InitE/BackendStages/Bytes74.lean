import InitE.BackendStages.Padded74
import InitE.BackendStages.BytesData74
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes74_eq : (Padded74.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes74 := by
  with_unfolding_all rfl
#print axioms sectionBytes74_eq
end InitE.BackendStages
