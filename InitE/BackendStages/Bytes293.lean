import InitE.BackendStages.Padded293
import InitE.BackendStages.BytesData293
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes293_eq : (Padded293.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes293 := by
  with_unfolding_all rfl
#print axioms sectionBytes293_eq
end InitE.BackendStages
