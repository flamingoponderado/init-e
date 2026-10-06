import InitE.BackendStages.Padded507
import InitE.BackendStages.BytesData507
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes507_eq : (Padded507.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes507 := by
  with_unfolding_all rfl
#print axioms sectionBytes507_eq
end InitE.BackendStages
