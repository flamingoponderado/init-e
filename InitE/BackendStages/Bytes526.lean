import InitE.BackendStages.Padded526
import InitE.BackendStages.BytesData526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes526_eq : (Padded526.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes526 := by
  with_unfolding_all rfl
#print axioms sectionBytes526_eq
end InitE.BackendStages
