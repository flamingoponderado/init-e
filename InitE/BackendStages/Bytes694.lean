import InitE.BackendStages.Padded694
import InitE.BackendStages.BytesData694
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes694_eq : (Padded694.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes694 := by
  with_unfolding_all rfl
#print axioms sectionBytes694_eq
end InitE.BackendStages
