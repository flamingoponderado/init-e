import InitE.BackendStages.Padded105
import InitE.BackendStages.BytesData105
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes105_eq : (Padded105.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes105 := by
  with_unfolding_all rfl
#print axioms sectionBytes105_eq
end InitE.BackendStages
