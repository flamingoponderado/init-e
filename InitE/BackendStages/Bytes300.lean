import InitE.BackendStages.Padded300
import InitE.BackendStages.BytesData300
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes300_eq : (Padded300.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes300 := by
  with_unfolding_all rfl
#print axioms sectionBytes300_eq
end InitE.BackendStages
