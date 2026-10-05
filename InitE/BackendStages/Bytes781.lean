import InitE.BackendStages.Padded781
import InitE.BackendStages.BytesData781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes781_eq : (Padded781.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes781 := by
  with_unfolding_all rfl
#print axioms sectionBytes781_eq
end InitE.BackendStages
