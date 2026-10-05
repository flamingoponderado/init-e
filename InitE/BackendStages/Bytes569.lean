import InitE.BackendStages.Padded569
import InitE.BackendStages.BytesData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes569_eq : (Padded569.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes569 := by
  with_unfolding_all rfl
#print axioms sectionBytes569_eq
end InitE.BackendStages
