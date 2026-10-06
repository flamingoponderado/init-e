import InitE.BackendStages.Padded809
import InitE.BackendStages.BytesData809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes809_eq : (Padded809.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes809 := by
  with_unfolding_all rfl
#print axioms sectionBytes809_eq
end InitE.BackendStages
