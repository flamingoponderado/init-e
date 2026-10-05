import InitE.BackendStages.Padded104
import InitE.BackendStages.BytesData104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes104_eq : (Padded104.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes104 := by
  with_unfolding_all rfl
#print axioms sectionBytes104_eq
end InitE.BackendStages
