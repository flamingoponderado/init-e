import InitE.BackendStages.Padded481
import InitE.BackendStages.BytesData481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes481_eq : (Padded481.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes481 := by
  with_unfolding_all rfl
#print axioms sectionBytes481_eq
end InitE.BackendStages
