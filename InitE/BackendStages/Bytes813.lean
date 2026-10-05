import InitE.BackendStages.Padded813
import InitE.BackendStages.BytesData813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes813_eq : (Padded813.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes813 := by
  with_unfolding_all rfl
#print axioms sectionBytes813_eq
end InitE.BackendStages
