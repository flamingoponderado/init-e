import InitE.BackendStages.Padded638
import InitE.BackendStages.BytesData638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes638_eq : (Padded638.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes638 := by
  with_unfolding_all rfl
#print axioms sectionBytes638_eq
end InitE.BackendStages
