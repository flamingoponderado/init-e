import InitE.BackendStages.Padded770
import InitE.BackendStages.BytesData770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes770_eq : (Padded770.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes770 := by
  with_unfolding_all rfl
#print axioms sectionBytes770_eq
end InitE.BackendStages
