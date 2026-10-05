import InitE.BackendStages.Padded114
import InitE.BackendStages.BytesData114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes114_eq : (Padded114.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes114 := by
  with_unfolding_all rfl
#print axioms sectionBytes114_eq
end InitE.BackendStages
