import InitE.BackendStages.Padded295
import InitE.BackendStages.BytesData295
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes295_eq : (Padded295.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes295 := by
  with_unfolding_all rfl
#print axioms sectionBytes295_eq
end InitE.BackendStages
