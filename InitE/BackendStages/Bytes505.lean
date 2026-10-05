import InitE.BackendStages.Padded505
import InitE.BackendStages.BytesData505
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes505_eq : (Padded505.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes505 := by
  with_unfolding_all rfl
#print axioms sectionBytes505_eq
end InitE.BackendStages
