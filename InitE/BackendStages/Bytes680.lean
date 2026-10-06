import InitE.BackendStages.Padded680
import InitE.BackendStages.BytesData680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes680_eq : (Padded680.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes680 := by
  with_unfolding_all rfl
#print axioms sectionBytes680_eq
end InitE.BackendStages
