import InitE.BackendStages.Padded873
import InitE.BackendStages.BytesData873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes873_eq : (Padded873.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes873 := by
  with_unfolding_all rfl
#print axioms sectionBytes873_eq
end InitE.BackendStages
