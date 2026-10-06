import InitE.BackendStages.Padded573
import InitE.BackendStages.BytesData573
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes573_eq : (Padded573.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes573 := by
  with_unfolding_all rfl
#print axioms sectionBytes573_eq
end InitE.BackendStages
