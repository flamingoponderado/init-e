import InitE.BackendStages.Padded591
import InitE.BackendStages.BytesData591
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes591_eq : (Padded591.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes591 := by
  with_unfolding_all rfl
#print axioms sectionBytes591_eq
end InitE.BackendStages
