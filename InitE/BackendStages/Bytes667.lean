import InitE.BackendStages.Padded667
import InitE.BackendStages.BytesData667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes667_eq : (Padded667.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes667 := by
  with_unfolding_all rfl
#print axioms sectionBytes667_eq
end InitE.BackendStages
