import InitE.BackendStages.Padded75
import InitE.BackendStages.BytesData75
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes75_eq : (Padded75.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes75 := by
  with_unfolding_all rfl
#print axioms sectionBytes75_eq
end InitE.BackendStages
