import InitE.BackendStages.Padded796
import InitE.BackendStages.BytesData796
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes796_eq : (Padded796.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes796 := by
  with_unfolding_all rfl
#print axioms sectionBytes796_eq
end InitE.BackendStages
