import InitE.BackendStages.Padded344
import InitE.BackendStages.BytesData344
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes344_eq : (Padded344.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes344 := by
  with_unfolding_all rfl
#print axioms sectionBytes344_eq
end InitE.BackendStages
