import InitE.BackendStages.Padded313
import InitE.BackendStages.BytesData313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes313_eq : (Padded313.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes313 := by
  with_unfolding_all rfl
#print axioms sectionBytes313_eq
end InitE.BackendStages
