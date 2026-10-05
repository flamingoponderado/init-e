import InitE.BackendStages.Padded420
import InitE.BackendStages.BytesData420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes420_eq : (Padded420.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes420 := by
  with_unfolding_all rfl
#print axioms sectionBytes420_eq
end InitE.BackendStages
