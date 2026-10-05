import InitE.BackendStages.Padded805
import InitE.BackendStages.BytesData805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes805_eq : (Padded805.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes805 := by
  with_unfolding_all rfl
#print axioms sectionBytes805_eq
end InitE.BackendStages
