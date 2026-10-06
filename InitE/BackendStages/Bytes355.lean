import InitE.BackendStages.Padded355
import InitE.BackendStages.BytesData355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes355_eq : (Padded355.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes355 := by
  with_unfolding_all rfl
#print axioms sectionBytes355_eq
end InitE.BackendStages
