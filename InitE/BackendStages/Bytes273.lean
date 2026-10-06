import InitE.BackendStages.Padded273
import InitE.BackendStages.BytesData273
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes273_eq : (Padded273.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes273 := by
  with_unfolding_all rfl
#print axioms sectionBytes273_eq
end InitE.BackendStages
