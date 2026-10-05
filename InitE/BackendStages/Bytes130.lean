import InitE.BackendStages.Padded130
import InitE.BackendStages.BytesData130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes130_eq : (Padded130.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes130 := by
  with_unfolding_all rfl
#print axioms sectionBytes130_eq
end InitE.BackendStages
