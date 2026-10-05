import InitE.BackendStages.Padded142
import InitE.BackendStages.BytesData142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes142_eq : (Padded142.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes142 := by
  with_unfolding_all rfl
#print axioms sectionBytes142_eq
end InitE.BackendStages
