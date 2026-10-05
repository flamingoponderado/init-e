import InitE.BackendStages.Padded724
import InitE.BackendStages.BytesData724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes724_eq : (Padded724.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes724 := by
  with_unfolding_all rfl
#print axioms sectionBytes724_eq
end InitE.BackendStages
