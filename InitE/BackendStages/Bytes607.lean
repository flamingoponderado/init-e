import InitE.BackendStages.Padded607
import InitE.BackendStages.BytesData607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes607_eq : (Padded607.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes607 := by
  with_unfolding_all rfl
#print axioms sectionBytes607_eq
end InitE.BackendStages
