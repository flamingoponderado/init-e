import InitE.BackendStages.Padded835
import InitE.BackendStages.BytesData835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes835_eq : (Padded835.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes835 := by
  with_unfolding_all rfl
#print axioms sectionBytes835_eq
end InitE.BackendStages
