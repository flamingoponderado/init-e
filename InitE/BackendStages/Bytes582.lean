import InitE.BackendStages.Padded582
import InitE.BackendStages.BytesData582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes582_eq : (Padded582.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes582 := by
  with_unfolding_all rfl
#print axioms sectionBytes582_eq
end InitE.BackendStages
