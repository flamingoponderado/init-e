import InitE.BackendStages.Padded372
import InitE.BackendStages.BytesData372
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes372_eq : (Padded372.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes372 := by
  with_unfolding_all rfl
#print axioms sectionBytes372_eq
end InitE.BackendStages
