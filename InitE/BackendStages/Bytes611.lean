import InitE.BackendStages.Padded611
import InitE.BackendStages.BytesData611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes611_eq : (Padded611.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes611 := by
  with_unfolding_all rfl
#print axioms sectionBytes611_eq
end InitE.BackendStages
