import InitE.BackendStages.Padded858
import InitE.BackendStages.BytesData858
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes858_eq : (Padded858.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes858 := by
  with_unfolding_all rfl
#print axioms sectionBytes858_eq
end InitE.BackendStages
