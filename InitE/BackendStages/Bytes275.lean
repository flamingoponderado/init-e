import InitE.BackendStages.Padded275
import InitE.BackendStages.BytesData275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes275_eq : (Padded275.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes275 := by
  with_unfolding_all rfl
#print axioms sectionBytes275_eq
end InitE.BackendStages
