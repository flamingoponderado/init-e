import InitE.BackendStages.Padded110
import InitE.BackendStages.BytesData110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes110_eq : (Padded110.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes110 := by
  with_unfolding_all rfl
#print axioms sectionBytes110_eq
end InitE.BackendStages
