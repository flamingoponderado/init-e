import InitE.BackendStages.Padded764
import InitE.BackendStages.BytesData764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes764_eq : (Padded764.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes764 := by
  with_unfolding_all rfl
#print axioms sectionBytes764_eq
end InitE.BackendStages
