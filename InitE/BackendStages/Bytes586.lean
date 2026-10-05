import InitE.BackendStages.Padded586
import InitE.BackendStages.BytesData586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes586_eq : (Padded586.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes586 := by
  with_unfolding_all rfl
#print axioms sectionBytes586_eq
end InitE.BackendStages
