import InitE.BackendStages.Padded778
import InitE.BackendStages.BytesData778
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes778_eq : (Padded778.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes778 := by
  with_unfolding_all rfl
#print axioms sectionBytes778_eq
end InitE.BackendStages
