import InitE.BackendStages.Padded531
import InitE.BackendStages.BytesData531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes531_eq : (Padded531.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes531 := by
  with_unfolding_all rfl
#print axioms sectionBytes531_eq
end InitE.BackendStages
