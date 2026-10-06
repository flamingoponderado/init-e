import InitE.BackendStages.Padded830
import InitE.BackendStages.BytesData830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes830_eq : (Padded830.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes830 := by
  with_unfolding_all rfl
#print axioms sectionBytes830_eq
end InitE.BackendStages
