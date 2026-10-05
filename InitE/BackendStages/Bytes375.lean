import InitE.BackendStages.Padded375
import InitE.BackendStages.BytesData375
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes375_eq : (Padded375.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes375 := by
  with_unfolding_all rfl
#print axioms sectionBytes375_eq
end InitE.BackendStages
