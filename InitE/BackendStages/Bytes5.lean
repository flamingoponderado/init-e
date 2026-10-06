import InitE.BackendStages.Padded5
import InitE.BackendStages.BytesData5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes5_eq : (Padded5.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes5 := by
  with_unfolding_all rfl
#print axioms sectionBytes5_eq
end InitE.BackendStages
