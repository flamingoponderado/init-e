import InitE.BackendStages.Padded508
import InitE.BackendStages.BytesData508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes508_eq : (Padded508.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes508 := by
  with_unfolding_all rfl
#print axioms sectionBytes508_eq
end InitE.BackendStages
