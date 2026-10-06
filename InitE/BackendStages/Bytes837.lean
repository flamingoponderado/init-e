import InitE.BackendStages.Padded837
import InitE.BackendStages.BytesData837
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes837_eq : (Padded837.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes837 := by
  with_unfolding_all rfl
#print axioms sectionBytes837_eq
end InitE.BackendStages
