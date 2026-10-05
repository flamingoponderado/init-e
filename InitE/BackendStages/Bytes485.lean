import InitE.BackendStages.Padded485
import InitE.BackendStages.BytesData485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes485_eq : (Padded485.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes485 := by
  with_unfolding_all rfl
#print axioms sectionBytes485_eq
end InitE.BackendStages
