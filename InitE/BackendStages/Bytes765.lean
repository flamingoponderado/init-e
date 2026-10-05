import InitE.BackendStages.Padded765
import InitE.BackendStages.BytesData765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes765_eq : (Padded765.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes765 := by
  with_unfolding_all rfl
#print axioms sectionBytes765_eq
end InitE.BackendStages
