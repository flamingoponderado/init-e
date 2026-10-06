import InitE.BackendStages.Padded610
import InitE.BackendStages.BytesData610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes610_eq : (Padded610.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes610 := by
  with_unfolding_all rfl
#print axioms sectionBytes610_eq
end InitE.BackendStages
