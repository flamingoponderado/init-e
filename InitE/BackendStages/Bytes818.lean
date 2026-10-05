import InitE.BackendStages.Padded818
import InitE.BackendStages.BytesData818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes818_eq : (Padded818.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes818 := by
  with_unfolding_all rfl
#print axioms sectionBytes818_eq
end InitE.BackendStages
