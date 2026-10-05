import InitE.BackendStages.Padded530
import InitE.BackendStages.BytesData530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes530_eq : (Padded530.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes530 := by
  with_unfolding_all rfl
#print axioms sectionBytes530_eq
end InitE.BackendStages
