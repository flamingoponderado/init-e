import InitE.BackendStages.Padded413
import InitE.BackendStages.BytesData413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes413_eq : (Padded413.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes413 := by
  with_unfolding_all rfl
#print axioms sectionBytes413_eq
end InitE.BackendStages
