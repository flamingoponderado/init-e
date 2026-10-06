import InitE.BackendStages.Padded797
import InitE.BackendStages.BytesData797
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes797_eq : (Padded797.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes797 := by
  with_unfolding_all rfl
#print axioms sectionBytes797_eq
end InitE.BackendStages
