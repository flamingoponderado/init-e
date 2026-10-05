import InitE.BackendStages.Padded127
import InitE.BackendStages.BytesData127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes127_eq : (Padded127.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes127 := by
  with_unfolding_all rfl
#print axioms sectionBytes127_eq
end InitE.BackendStages
