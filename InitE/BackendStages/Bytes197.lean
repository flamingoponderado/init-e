import InitE.BackendStages.Padded197
import InitE.BackendStages.BytesData197
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes197_eq : (Padded197.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes197 := by
  with_unfolding_all rfl
#print axioms sectionBytes197_eq
end InitE.BackendStages
