import InitE.BackendStages.Padded77
import InitE.BackendStages.BytesData77
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes77_eq : (Padded77.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes77 := by
  with_unfolding_all rfl
#print axioms sectionBytes77_eq
end InitE.BackendStages
