import InitE.BackendStages.Padded745
import InitE.BackendStages.BytesData745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes745_eq : (Padded745.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes745 := by
  with_unfolding_all rfl
#print axioms sectionBytes745_eq
end InitE.BackendStages
