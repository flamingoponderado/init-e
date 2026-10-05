import InitE.BackendStages.Padded318
import InitE.BackendStages.BytesData318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes318_eq : (Padded318.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes318 := by
  with_unfolding_all rfl
#print axioms sectionBytes318_eq
end InitE.BackendStages
