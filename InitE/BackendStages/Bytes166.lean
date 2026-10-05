import InitE.BackendStages.Padded166
import InitE.BackendStages.BytesData166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes166_eq : (Padded166.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes166 := by
  with_unfolding_all rfl
#print axioms sectionBytes166_eq
end InitE.BackendStages
