import InitE.BackendStages.Padded880
import InitE.BackendStages.BytesData880
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes880_eq : (Padded880.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes880 := by
  with_unfolding_all rfl
#print axioms sectionBytes880_eq
end InitE.BackendStages
