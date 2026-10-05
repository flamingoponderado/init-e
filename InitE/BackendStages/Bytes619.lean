import InitE.BackendStages.Padded619
import InitE.BackendStages.BytesData619
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes619_eq : (Padded619.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes619 := by
  with_unfolding_all rfl
#print axioms sectionBytes619_eq
end InitE.BackendStages
