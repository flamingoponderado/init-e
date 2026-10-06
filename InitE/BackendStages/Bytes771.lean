import InitE.BackendStages.Padded771
import InitE.BackendStages.BytesData771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes771_eq : (Padded771.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes771 := by
  with_unfolding_all rfl
#print axioms sectionBytes771_eq
end InitE.BackendStages
