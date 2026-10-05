import InitE.BackendStages.Padded218
import InitE.BackendStages.BytesData218
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes218_eq : (Padded218.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes218 := by
  with_unfolding_all rfl
#print axioms sectionBytes218_eq
end InitE.BackendStages
