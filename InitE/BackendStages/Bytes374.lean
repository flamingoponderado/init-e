import InitE.BackendStages.Padded374
import InitE.BackendStages.BytesData374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes374_eq : (Padded374.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes374 := by
  with_unfolding_all rfl
#print axioms sectionBytes374_eq
end InitE.BackendStages
