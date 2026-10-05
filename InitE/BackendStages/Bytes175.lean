import InitE.BackendStages.Padded175
import InitE.BackendStages.BytesData175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes175_eq : (Padded175.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes175 := by
  with_unfolding_all rfl
#print axioms sectionBytes175_eq
end InitE.BackendStages
