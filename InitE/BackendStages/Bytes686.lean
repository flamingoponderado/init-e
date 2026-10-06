import InitE.BackendStages.Padded686
import InitE.BackendStages.BytesData686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes686_eq : (Padded686.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes686 := by
  with_unfolding_all rfl
#print axioms sectionBytes686_eq
end InitE.BackendStages
