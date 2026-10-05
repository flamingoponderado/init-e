import InitE.BackendStages.Padded706
import InitE.BackendStages.BytesData706
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes706_eq : (Padded706.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes706 := by
  with_unfolding_all rfl
#print axioms sectionBytes706_eq
end InitE.BackendStages
