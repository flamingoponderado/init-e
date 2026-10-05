import InitE.BackendStages.Padded265
import InitE.BackendStages.BytesData265
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes265_eq : (Padded265.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes265 := by
  with_unfolding_all rfl
#print axioms sectionBytes265_eq
end InitE.BackendStages
