import InitE.BackendStages.Padded358
import InitE.BackendStages.BytesData358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes358_eq : (Padded358.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes358 := by
  with_unfolding_all rfl
#print axioms sectionBytes358_eq
end InitE.BackendStages
