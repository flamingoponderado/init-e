import InitE.BackendStages.Padded657
import InitE.BackendStages.BytesData657
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes657_eq : (Padded657.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes657 := by
  with_unfolding_all rfl
#print axioms sectionBytes657_eq
end InitE.BackendStages
