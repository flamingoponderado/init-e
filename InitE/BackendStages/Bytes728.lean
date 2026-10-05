import InitE.BackendStages.Padded728
import InitE.BackendStages.BytesData728
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes728_eq : (Padded728.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes728 := by
  with_unfolding_all rfl
#print axioms sectionBytes728_eq
end InitE.BackendStages
