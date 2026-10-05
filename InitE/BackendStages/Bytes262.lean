import InitE.BackendStages.Padded262
import InitE.BackendStages.BytesData262
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes262_eq : (Padded262.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes262 := by
  with_unfolding_all rfl
#print axioms sectionBytes262_eq
end InitE.BackendStages
