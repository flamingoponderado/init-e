import InitE.BackendStages.Padded548
import InitE.BackendStages.BytesData548
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes548_eq : (Padded548.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes548 := by
  with_unfolding_all rfl
#print axioms sectionBytes548_eq
end InitE.BackendStages
