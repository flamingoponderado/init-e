import InitE.BackendStages.Padded739
import InitE.BackendStages.BytesData739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes739_eq : (Padded739.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes739 := by
  with_unfolding_all rfl
#print axioms sectionBytes739_eq
end InitE.BackendStages
