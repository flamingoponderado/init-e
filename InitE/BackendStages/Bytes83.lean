import InitE.BackendStages.Padded83
import InitE.BackendStages.BytesData83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes83_eq : (Padded83.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes83 := by
  with_unfolding_all rfl
#print axioms sectionBytes83_eq
end InitE.BackendStages
