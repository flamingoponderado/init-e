import InitE.BackendStages.Padded532
import InitE.BackendStages.BytesData532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes532_eq : (Padded532.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes532 := by
  with_unfolding_all rfl
#print axioms sectionBytes532_eq
end InitE.BackendStages
