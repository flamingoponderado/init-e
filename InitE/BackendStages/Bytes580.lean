import InitE.BackendStages.Padded580
import InitE.BackendStages.BytesData580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes580_eq : (Padded580.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes580 := by
  with_unfolding_all rfl
#print axioms sectionBytes580_eq
end InitE.BackendStages
