import InitE.BackendStages.Padded860
import InitE.BackendStages.BytesData860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes860_eq : (Padded860.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes860 := by
  with_unfolding_all rfl
#print axioms sectionBytes860_eq
end InitE.BackendStages
