import InitE.BackendStages.Padded101
import InitE.BackendStages.BytesData101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes101_eq : (Padded101.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes101 := by
  with_unfolding_all rfl
#print axioms sectionBytes101_eq
end InitE.BackendStages
