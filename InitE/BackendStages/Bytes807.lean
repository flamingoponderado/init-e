import InitE.BackendStages.Padded807
import InitE.BackendStages.BytesData807
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes807_eq : (Padded807.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes807 := by
  with_unfolding_all rfl
#print axioms sectionBytes807_eq
end InitE.BackendStages
