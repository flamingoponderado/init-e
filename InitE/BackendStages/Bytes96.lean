import InitE.BackendStages.Padded96
import InitE.BackendStages.BytesData96
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes96_eq : (Padded96.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes96 := by
  with_unfolding_all rfl
#print axioms sectionBytes96_eq
end InitE.BackendStages
