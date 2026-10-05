import InitE.BackendStages.Padded380
import InitE.BackendStages.BytesData380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes380_eq : (Padded380.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes380 := by
  with_unfolding_all rfl
#print axioms sectionBytes380_eq
end InitE.BackendStages
