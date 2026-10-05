import InitE.BackendStages.Padded172
import InitE.BackendStages.BytesData172
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes172_eq : (Padded172.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes172 := by
  with_unfolding_all rfl
#print axioms sectionBytes172_eq
end InitE.BackendStages
