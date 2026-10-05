import InitE.BackendStages.Padded232
import InitE.BackendStages.BytesData232
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes232_eq : (Padded232.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes232 := by
  with_unfolding_all rfl
#print axioms sectionBytes232_eq
end InitE.BackendStages
