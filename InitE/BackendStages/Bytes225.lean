import InitE.BackendStages.Padded225
import InitE.BackendStages.BytesData225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes225_eq : (Padded225.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes225 := by
  with_unfolding_all rfl
#print axioms sectionBytes225_eq
end InitE.BackendStages
