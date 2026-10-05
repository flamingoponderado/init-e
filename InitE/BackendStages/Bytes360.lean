import InitE.BackendStages.Padded360
import InitE.BackendStages.BytesData360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes360_eq : (Padded360.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes360 := by
  with_unfolding_all rfl
#print axioms sectionBytes360_eq
end InitE.BackendStages
