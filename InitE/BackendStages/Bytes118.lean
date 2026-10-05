import InitE.BackendStages.Padded118
import InitE.BackendStages.BytesData118
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes118_eq : (Padded118.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes118 := by
  with_unfolding_all rfl
#print axioms sectionBytes118_eq
end InitE.BackendStages
