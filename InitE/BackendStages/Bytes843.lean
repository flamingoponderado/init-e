import InitE.BackendStages.Padded843
import InitE.BackendStages.BytesData843
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes843_eq : (Padded843.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes843 := by
  with_unfolding_all rfl
#print axioms sectionBytes843_eq
end InitE.BackendStages
