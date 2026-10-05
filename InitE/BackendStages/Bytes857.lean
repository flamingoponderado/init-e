import InitE.BackendStages.Padded857
import InitE.BackendStages.BytesData857
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes857_eq : (Padded857.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes857 := by
  with_unfolding_all rfl
#print axioms sectionBytes857_eq
end InitE.BackendStages
