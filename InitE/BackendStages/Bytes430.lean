import InitE.BackendStages.Padded430
import InitE.BackendStages.BytesData430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes430_eq : (Padded430.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes430 := by
  with_unfolding_all rfl
#print axioms sectionBytes430_eq
end InitE.BackendStages
