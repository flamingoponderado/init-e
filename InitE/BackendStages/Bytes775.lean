import InitE.BackendStages.Padded775
import InitE.BackendStages.BytesData775
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes775_eq : (Padded775.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes775 := by
  with_unfolding_all rfl
#print axioms sectionBytes775_eq
end InitE.BackendStages
