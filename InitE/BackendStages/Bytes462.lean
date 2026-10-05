import InitE.BackendStages.Padded462
import InitE.BackendStages.BytesData462
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes462_eq : (Padded462.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes462 := by
  with_unfolding_all rfl
#print axioms sectionBytes462_eq
end InitE.BackendStages
