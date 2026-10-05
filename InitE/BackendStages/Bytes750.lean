import InitE.BackendStages.Padded750
import InitE.BackendStages.BytesData750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes750_eq : (Padded750.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes750 := by
  with_unfolding_all rfl
#print axioms sectionBytes750_eq
end InitE.BackendStages
